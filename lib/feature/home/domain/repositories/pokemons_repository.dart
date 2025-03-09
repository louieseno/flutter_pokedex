import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/feature/home/data/repositories/pokemons/pokemons_data_repository.dart';

/// {@template pokemons_repository}
/// Repository class for managing Pokémon data.
///
/// This class acts as an intermediary between the data layer (data repositories)
/// and the presentation layer (UI). It provides methods to fetch Pokémon data
/// and handles the data retrieval logic.
/// {@endtemplate}
class PokemonsRepository {
  const PokemonsRepository({required PokemonsDataRepository pokemonsDataRepository})
    : _pokemonsDataRepository = pokemonsDataRepository;

  final PokemonsDataRepository _pokemonsDataRepository;

  Future<Result<List<PokemonDetails>>> fetchPokemons({int? limit, int? offset}) =>
      _pokemonsDataRepository.fetchPokemons(limit: limit, offset: offset);

  Future<Result<List<PokemonDetails>>> fetchNextPokemons() =>
      _pokemonsDataRepository.fetchNextPokemons();
}
