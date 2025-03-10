import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/feature/home/data/repositories/pokemons/pokemons_data_repository.dart';
import 'package:flutter_pokedex/feature/home/data/services/api/api_client.dart';

class PokemonsRepositoryRemote implements PokemonsDataRepository {
  PokemonsRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<Result<List<PokemonDetails>>> fetchPokemons({
    int? limit,
    int? offset,
    refresh = false,
  }) async {
    try {
      if (refresh) _apiClient.resetNextUrl();
      return await _apiClient.fetchPokemons(limit: limit ?? 10, offset: offset ?? 0);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<List<PokemonDetails>>> fetchNextPokemons() async {
    try {
      return await _apiClient.fetchNextPokemons();
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<PokemonDetails?>> searchPokemonByName(String name) async {
    try {
      _apiClient.resetNextUrl();
      return await _apiClient.searchPokemonByName(name);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
