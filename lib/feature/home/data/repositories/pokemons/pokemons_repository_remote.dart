import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon/pokemon.dart';
import 'package:flutter_pokedex/feature/home/data/repositories/pokemons/pokemons_data_repository.dart';
import 'package:flutter_pokedex/feature/home/data/services/api/api_client.dart';

class PokemonsRepositoryRemote implements PokemonsDataRepository {
  PokemonsRepositoryRemote({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<Result<List<Pokemon>>> fetchPokemons({int? limit, int? offset}) async {
    try {
      return await _apiClient.fetchPokemons(limit: limit ?? 10, offset: offset ?? 10);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
