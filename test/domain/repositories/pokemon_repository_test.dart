import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/domain/repositories/pokemons_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';

void main() {
  group('PokemonsRepository', () {
    late MockPokemonsDataRepository mockPokemonsDataRepository;
    late final PokemonsRepository pokemonsRepository;

    final stubPokemonDetails = {
      'id': 1,
      'name': 'bulbasaur',
      'weight': 60,
      'height': 7,
      'base_experience': 64,
      'sprites': {
        'other': {
          'official-artwork': {'front_default': 'http://some-image-url.png'},
        },
      },
      'types': [
        {
          'slot': 1,
          'type': {'name': 'grass', 'url': 'http://mockapi.test/type/12/'},
        },
      ],
      'abilities': [
        {
          'ability': {'name': 'overgrow', 'url': 'http://mockapi.test/ability/65/'},
          'is_hidden': false,
          'slot': 1,
        },
      ],
      'stats': [
        {
          'base_stat': 45,
          'effort': 0,
          'stat': {'name': 'hp', 'url': 'http://mockapi.test/stat/1/'},
        },
      ],
    };

    setUpAll(() {
      mockPokemonsDataRepository = MockPokemonsDataRepository();
      pokemonsRepository = PokemonsRepository(pokemonsDataRepository: mockPokemonsDataRepository);
    });

    group('fetchPokemons', () {
      test('fetchPokemons returns list of PokemonDetails', () async {
        when(
          () => mockPokemonsDataRepository.fetchPokemons(),
        ).thenAnswer((_) async => Result.ok([PokemonDetails.fromJson(stubPokemonDetails)]));

        final result = await pokemonsRepository.fetchPokemons();

        verify(() => mockPokemonsDataRepository.fetchPokemons()).called(1);
        expect(result, isA<Ok<List<PokemonDetails>>>());
      });

      test('fetchPokemons should return error when API fails', () async {
        when(
          () => mockPokemonsDataRepository.fetchPokemons(),
        ).thenAnswer((_) async => Result.error(Exception('Failed to load Pokémon: error')));

        final result = await pokemonsRepository.fetchPokemons();

        verify(() => mockPokemonsDataRepository.fetchPokemons()).called(1);
        expect(
          result,
          isA<Error<List<PokemonDetails>>>().having(
            (e) => (e as Error).error.toString(), // Extract the exception message
            'Error message',
            'Exception: Failed to load Pokémon: error',
          ),
        );
      });
    });

    group('fetchNextPokemons', () {
      test('fetchNextPokemons should return an empty list when nextUrl is null', () async {
        when(
          () => mockPokemonsDataRepository.fetchNextPokemons(),
        ).thenAnswer((_) async => Result.ok([]));

        final result = await pokemonsRepository.fetchNextPokemons();

        verify(() => mockPokemonsDataRepository.fetchNextPokemons()).called(1);
        expect(result, isA<Ok<List<PokemonDetails>>>());
        expect((result as Ok<List<PokemonDetails>>).value, isEmpty);
      });

      test('fetchNextPokemons should return error when API fails', () async {
        when(
          () => mockPokemonsDataRepository.fetchNextPokemons(),
        ).thenAnswer((_) async => Result.error(Exception('Failed to load Pokémon: error')));

        final result = await pokemonsRepository.fetchNextPokemons();

        verify(() => mockPokemonsDataRepository.fetchNextPokemons()).called(1);
        expect(
          result,
          isA<Error<List<PokemonDetails>>>().having(
            (e) => (e as Error).error.toString(),
            'Error message',
            'Exception: Failed to load Pokémon: error',
          ),
        );
      });
    });

    group('searchPokemonByName', () {
      test('searchPokemonByName returns PokemonDetails when found', () async {
        final query = 'bulbasaur';
        when(
          () => mockPokemonsDataRepository.searchPokemonByName(query),
        ).thenAnswer((_) async => Result.ok(PokemonDetails.fromJson(stubPokemonDetails)));

        final result = await pokemonsRepository.searchPokemonByName(query);

        verify(() => mockPokemonsDataRepository.searchPokemonByName(query)).called(1);
        expect(
          result,
          isA<Ok<PokemonDetails?>>().having(
            (e) => (e as Ok).value,
            'Pokemon Details',
            PokemonDetails.fromJson(stubPokemonDetails),
          ),
        );
      });

      test('searchPokemonByName returns null when Pokémon not found', () async {
        final query = 'missingno';
        when(
          () => mockPokemonsDataRepository.searchPokemonByName(query),
        ).thenAnswer((_) async => Result.ok(null));

        final result = await pokemonsRepository.searchPokemonByName(query);

        verify(() => mockPokemonsDataRepository.searchPokemonByName(query)).called(1);
        expect(result, isA<Ok<PokemonDetails?>>());
        expect((result as Ok<PokemonDetails?>).value, isNull);
      });

      test('searchPokemonByName returns error when API fails', () async {
        final query = 'pikachu';
        when(() => mockPokemonsDataRepository.searchPokemonByName(query)).thenAnswer(
          (_) async => Result.error(Exception('Failed to search Pokémon: An error occurred')),
        );

        final result = await pokemonsRepository.searchPokemonByName(query);

        verify(() => mockPokemonsDataRepository.searchPokemonByName(query)).called(1);
        expect(
          result,
          isA<Error<PokemonDetails?>>().having(
            (e) => (e as Error).error.toString(),
            'Error message',
            'Exception: Failed to search Pokémon: An error occurred',
          ),
        );
      });
    });
  });
}
