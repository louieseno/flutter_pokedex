import 'package:dio/dio.dart';
import 'package:flutter_pokedex/data/repositories/pokemons/pokemons_data_repository.dart';
import 'package:flutter_pokedex/data/services/api/api_client.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

class MockPokemonsDataRepository extends Mock implements PokemonsDataRepository {}

class MockDioClient extends Mock implements Dio {}

class MockResponse<T> extends Mock implements Response<T> {}

extension DioMethodMocks on MockDioClient {
  void mockFetchPokemons({
    required String baseUrl,
    required List<Map<String, dynamic>> pokemonList,
    String? nextUrl,
  }) {
    // Mock response for the list of Pokémon
    when(() => get('$baseUrl/pokemon', queryParameters: any(named: 'queryParameters'))).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(path: '$baseUrl/pokemon'),
        data: {'results': pokemonList, 'next': nextUrl},
        statusCode: 200,
      ),
    );

    // Mock each Pokémon's details request
    for (var pokemon in pokemonList) {
      when(() => get(pokemon['url'] as String)).thenAnswer((_) async {
        return Response(
          requestOptions: RequestOptions(path: pokemon['url'] as String),
          data: {
            'id': 1,
            'name': pokemon['name'],
            'weight': 60,
            'height': 7,
            'base_experience': 64,
            'sprites': {
              'other': {
                'official-artwork': {'front_default': 'https://some-image-url.png'},
              },
            },
            'types': [
              {
                "slot": 1,
                "type": {"name": "grass", "url": "$baseUrl/type/12/"},
              },
            ],
            'abilities': [
              {
                "ability": {"name": "overgrow", "url": "$baseUrl/ability/65/"},
                "is_hidden": false,
                "slot": 1,
              },
            ],
            'stats': [
              {
                "base_stat": 45,
                "effort": 0,
                "stat": {"name": "hp", "url": "$baseUrl/stat/1/"},
              },
            ],
          },
          statusCode: 200,
        );
      });
    }
  }

  void mockFetchPokemonsFailure({required String baseUrl}) {
    when(() => get('$baseUrl/pokemon', queryParameters: any(named: 'queryParameters'))).thenThrow(
      DioException(
        requestOptions: RequestOptions(path: '$baseUrl/pokemon'),
        response: Response(
          requestOptions: RequestOptions(path: '$baseUrl/pokemon'),
          statusCode: 500,
          data: {'error': 'Internal Server Error'},
        ),
      ),
    );
  }

  void mockFetchNextPokemonsFailure({required String baseUrl, required String nextUrl}) {
    when(() => get(nextUrl)).thenThrow(
      DioException(
        requestOptions: RequestOptions(path: nextUrl),
        response: Response(
          requestOptions: RequestOptions(path: nextUrl),
          statusCode: 500,
          data: {'error': 'Failed to fetch next page'},
        ),
      ),
    );
  }

  void mockFetchNextPokemonsEnd({required String baseUrl, required String nextUrl}) {
    when(() => get(any())).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(path: '$baseUrl/pokemon'),
        data: {'results': [], 'next': null},
        statusCode: 200,
      ),
    );
  }

  void mockSearchPokemonSuccess({required String baseUrl, required String name}) {
    when(() => get('$baseUrl/pokemon/${name.toLowerCase()}')).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(path: '$baseUrl/pokemon/${name.toLowerCase()}'),
        statusCode: 200,
        data: {
          'id': 1,
          'name': name,
          'weight': 60,
          'height': 7,
          'base_experience': 64,
          'sprites': {
            'other': {
              'official-artwork': {'front_default': 'https://some-image-url.png'},
            },
          },
          'types': [
            {
              "slot": 1,
              "type": {"name": "grass", "url": "$baseUrl/type/12/"},
            },
          ],
          'abilities': [
            {
              "ability": {"name": "overgrow", "url": "$baseUrl/ability/65/"},
              "is_hidden": false,
              "slot": 1,
            },
          ],
          'stats': [
            {
              "base_stat": 45,
              "effort": 0,
              "stat": {"name": "hp", "url": "$baseUrl/stat/1/"},
            },
          ],
        },
      ),
    );
  }

  void mockSearchPokemonNotFound({required String baseUrl, required String name}) {
    when(() => get('$baseUrl/pokemon/${name.toLowerCase()}')).thenThrow(
      DioException(
        requestOptions: RequestOptions(path: '$baseUrl/pokemon/${name.toLowerCase()}'),
        response: Response(
          requestOptions: RequestOptions(path: '$baseUrl/pokemon/${name.toLowerCase()}'),
          statusCode: 404,
        ),
        type: DioExceptionType.badResponse,
      ),
    );
  }

  void mockSearchPokemonApiFailure({required String baseUrl, required String name}) {
    when(() => get('$baseUrl/pokemon/${name.toLowerCase()}')).thenThrow(
      DioException(
        requestOptions: RequestOptions(path: '$baseUrl/pokemon/${name.toLowerCase()}'),
        message: 'API failure',
        type: DioExceptionType.connectionError,
      ),
    );
  }
}
