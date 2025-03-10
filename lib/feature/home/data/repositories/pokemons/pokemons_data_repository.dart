import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon_details/pokemon_details.dart';

abstract interface class PokemonsDataRepository {
  Future<Result<List<PokemonDetails>>> fetchPokemons({int? limit, int? offset, refresh = false});
  Future<Result<List<PokemonDetails>>> fetchNextPokemons();
  Future<Result<PokemonDetails?>> searchPokemonByName(String name);
}
