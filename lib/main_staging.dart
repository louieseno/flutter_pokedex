import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pokedex/bootstrap.dart';
import 'package:flutter_pokedex/data/repositories/pokemons/pokemons_repository_remote.dart';
import 'package:flutter_pokedex/data/services/api/api_client.dart';

/// {@template main_staging}
/// The entry point for the development environment of the Flutter Pokedex app.
///
/// This initializes the app using the [bootstrap] function to set up
/// error handling, state management, and cross-flavor configurations.
/// {@endtemplate}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  bootstrap(pokemonsDataRepository: PokemonsRepositoryRemote(apiClient: ApiClient()));
}
