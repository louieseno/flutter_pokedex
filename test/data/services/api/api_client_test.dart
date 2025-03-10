import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/data/services/api/api_client.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../mocks.dart';

void main() {
  group('PokemonsRepostioryRemote', () {
    late MockDioClient mockDioClient;
    late ApiClient apiClient;
    final testBaseUrl = 'https://mockapi.test';

    setUpAll(() {
      mockDioClient = MockDioClient();
      apiClient = ApiClient(clientFactory: () => mockDioClient, baseUrl: testBaseUrl);
    });

    group('fetchPokemons', () {
      test('fetchPokemons returns list of PokemonDetails', () async {
        mockDioClient.mockFetchPokemons(
          baseUrl: testBaseUrl,
          pokemonList: [
            {'name': 'bulbasaur', 'url': '$testBaseUrl/pokemon/1'},
            {'name': 'ivysaur', 'url': '$testBaseUrl/pokemon/2'},
          ],
          nextUrl: '$testBaseUrl/pokemon?offset=10&limit=10',
        );

        final result = await apiClient.fetchPokemons();

        expect(result, isA<Ok<List<PokemonDetails>>>());
      });
    });

    group('fetchNextPokemons', () {
      test('fetchNextPokemons should return an empty list when nextUrl is null', () async {
        mockDioClient.mockFetchNextPokemonsEnd(
          baseUrl: testBaseUrl,
          nextUrl: '$testBaseUrl/pokemon?offset=10&limit=10',
        );
        final result = await apiClient.fetchNextPokemons();
        expect(result, isA<Ok<List<PokemonDetails>>>());
        expect((result as Ok<List<PokemonDetails>>).value, isEmpty);
      });
    });

    group('searchPokemonByName', () {
      test('searchPokemonByName returns PokemonDetails when found', () async {
        mockDioClient.mockSearchPokemonSuccess(baseUrl: testBaseUrl, name: 'bulbasaur');

        final result = await apiClient.searchPokemonByName('bulbasaur');

        expect(result, isA<Ok<PokemonDetails?>>());
        expect((result as Ok).value?.name, equals('bulbasaur'));
      });

      test('searchPokemonByName returns null when Pokémon not found', () async {
        mockDioClient.mockSearchPokemonNotFound(baseUrl: testBaseUrl, name: 'missingno');

        final result = await apiClient.searchPokemonByName('missingno');

        expect(result, isA<Ok<PokemonDetails?>>());
        expect((result as Ok).value, isNull);
      });

      test('searchPokemonByName returns error when API fails', () async {
        mockDioClient.mockSearchPokemonApiFailure(baseUrl: testBaseUrl, name: 'pikachu');

        final result = await apiClient.searchPokemonByName('pikachu');

        expect(result, isA<Error<PokemonDetails?>>());
      });
    });
  });
}
