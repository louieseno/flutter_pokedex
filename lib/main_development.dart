import 'package:flutter_pokedex/bootstrap.dart';
import 'package:flutter_pokedex/flutter_pokedex_app.dart';

/// {@template main_development}
/// The entry point for the development environment of the Flutter Pokedex app.
///
/// This initializes the app using the [bootstrap] function to set up
/// error handling, state management, and cross-flavor configurations.
/// {@endtemplate}
void main() {
  bootstrap(() => const FlutterPokedexApp());
}
