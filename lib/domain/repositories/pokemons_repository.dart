import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/data/repositories/pokemons/pokemons_data_repository.dart';

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

  Future<Result<List<PokemonDetails>>> fetchPokemons({int? limit, int? offset, refresh = false}) =>
      _pokemonsDataRepository.fetchPokemons(limit: limit, offset: offset, refresh: refresh);

  Future<Result<List<PokemonDetails>>> fetchNextPokemons() =>
      _pokemonsDataRepository.fetchNextPokemons();

  Future<Result<PokemonDetails?>> searchPokemonByName(String name) =>
      _pokemonsDataRepository.searchPokemonByName(name);
}
