import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/data/model/pokemon/pokemon.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';

/// {@template api_client}
/// A simple API client to fetch Pokémon data from the Pokémon API.
/// {@endtemplate}
class ApiClient {
  /// Creates an instance of [ApiClient].
  ///
  /// Optionally accepts a [clientFactory] to provide a custom [Dio],
  /// useful for testing.
  ApiClient({Dio Function()? clientFactory, String? baseUrl})
    : _clientFactory = clientFactory ?? Dio.new,
      _baseUrl = baseUrl ?? dotenv.get('BASE_API_URL');

  /// The base URL for the Pokémon API, retrieved from environment variables.
  final String _baseUrl;

  /// Factory function to create an [Dio] instance.
  final Dio Function() _clientFactory;

  /// Stores the next URL for pagination.
  String? _nextUrl;

  /// Fetches a paginated list of Pokémon.
  ///
  /// - [limit] specifies how many Pokémon should be returned per request.
  /// - [offset] determines where the API should start retrieving Pokémon.
  ///
  /// The API returns Pokémon in a sequential list, so increasing the `offset`
  /// allows fetching the next set of Pokémon. For example:
  /// - `offset = 0, limit = 10` → Gets Pokémon 1-10.
  /// - `offset = 10, limit = 10` → Gets Pokémon 11-20.
  ///
  /// Throws an [Exception] if the request fails.
  Future<Result<List<PokemonDetails>>> fetchPokemons({int limit = 10, int offset = 0}) async {
    try {
      final client = _clientFactory();
      final response =
          _nextUrl != null
              ? await client.get(_nextUrl!) // Use nextUrl if available
              : await client.get(
                '$_baseUrl/pokemon',
                queryParameters: {'offset': offset, 'limit': limit},
              );

      final jsonData = response.data as Map<String, dynamic>;

      _nextUrl = jsonData['next']; // Store the next URL

      final pokemons =
          (jsonData['results'] as List).map((pokemon) => Pokemon.fromJson(pokemon)).toList();

      final List<PokemonDetails> pokemonDetails = await Future.wait(
        pokemons.map((pokemon) async {
          final detailResponse = await client.get(pokemon.url);
          return PokemonDetails.fromJson(detailResponse.data);
        }),
      );

      return Result.ok(pokemonDetails);
    } on DioException catch (e) {
      return Result.error(Exception('Failed to load Pokémon: ${e.message}'));
    }
  }

  /// Fetches the next page of Pokémon using the stored `nextUrl`.
  Future<Result<List<PokemonDetails>>> fetchNextPokemons() async {
    if (_nextUrl == null) {
      return Result.ok([]); // Have reach end limit
    }
    return fetchPokemons(); // It now uses the _nextUrl.
  }

  /// Search pokemon name
  Future<Result<PokemonDetails?>> searchPokemonByName(String name) async {
    try {
      final client = _clientFactory();
      final response = await client.get('$_baseUrl/pokemon/${name.toLowerCase()}');

      // Assuming the API returns a single PokemonDetails object
      return Result.ok(PokemonDetails.fromJson(response.data));
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return Result.ok(null); // Pokémon not found
      }
      return Result.error(Exception('Failed to search Pokémon: An error occurred'));
    }
  }

  ///Resets the next Url.
  void resetNextUrl() {
    _nextUrl = null;
  }
}
