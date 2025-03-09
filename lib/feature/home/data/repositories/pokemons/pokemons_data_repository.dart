import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon/pokemon.dart';

abstract interface class PokemonsDataRepository {
  Future<Result<List<Pokemon>>> fetchPokemons({int? limit, int? offset});
}
