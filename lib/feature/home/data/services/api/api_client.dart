import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon/pokemon.dart';

/// A simple API client to fetch Pokémon data from the Pokémon API.
final class ApiClient {
  /// Creates an instance of [ApiClient].
  ///
  /// Optionally accepts a [clientFactory] to provide a custom [HttpClient],
  /// useful for testing.
  ApiClient({HttpClient Function()? clientFactory})
    : _clientFactory = clientFactory ?? HttpClient.new;

  /// The base URL for the Pokémon API, retrieved from environment variables.
  static final String _baseUrl = dotenv.get('BASE_API_URL');

  /// Factory function to create an [HttpClient] instance.
  final HttpClient Function() _clientFactory;

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
  /// Throws an [HttpException] if the request fails.
  Future<Result<List<Pokemon>>> fetchPokemons({int limit = 10, int offset = 0}) async {
    final uri = Uri.parse('$_baseUrl/pokemon?offset=$offset&limit=$limit');

    final client = _clientFactory();
    final request = await client.getUrl(uri);

    final response = await request.close();

    if (response.statusCode != HttpStatus.ok) {
      throw HttpException('Failed to load Pokémon', uri: uri);
    }

    final responseBody = await response.transform(utf8.decoder).join();
    final jsonData = jsonDecode(responseBody) as Map<String, dynamic>;

    final pokemonApiModels =
        List<Map<String, dynamic>>.from(
          jsonData['results'],
        ).map((pokemon) => Pokemon.fromJson(pokemon)).toList();

    return Result.ok(pokemonApiModels);
  }
}
