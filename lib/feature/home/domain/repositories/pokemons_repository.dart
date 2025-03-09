import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon/pokemon.dart';
import 'package:flutter_pokedex/feature/home/data/repositories/pokemons/pokemons_data_repository.dart';

class PokemonsRepository {
  const PokemonsRepository({required PokemonsDataRepository pokemonsDataRepository})
    : _pokemonsDataRepository = pokemonsDataRepository;

  final PokemonsDataRepository _pokemonsDataRepository;

  Future<Result<List<Pokemon>>> fetchPokemons({int? limit, int? offset}) =>
      _pokemonsDataRepository.fetchPokemons(limit: limit, offset: offset);
}
