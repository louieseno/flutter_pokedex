import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pokedex/data/repositories/pokemons/pokemons_data_repository.dart';
import 'package:flutter_pokedex/domain/repositories/pokemons_repository.dart';
import 'package:flutter_pokedex/flutter_pokedex_app.dart';

/// {@template app_bloc_observer}
/// A custom [BlocObserver] that logs state changes and errors for all BLoCs.
///
/// This helps in debugging and monitoring application state transitions.
/// {@endtemplate}
class AppBlocObserver extends BlocObserver {
  /// {@macro app_bloc_observer}
  const AppBlocObserver();

  /// Logs whenever a BLoC's state changes.
  ///
  /// This method is triggered every time a BLoC emits a new state.
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  /// Logs any errors occurring in a BLoC along with their stack trace.
  ///
  /// This helps track runtime errors related to state management.
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// {@template bootstrap}
/// A function that initializes the app with necessary configurations.
///
/// - Captures and logs Flutter framework errors.
/// - Assigns a global [BlocObserver] for monitoring BLoC state changes.
/// - Runs the Flutter application with the provided widget builder.
///
/// This ensures proper error handling and state management setup before launching the app.
/// {@endtemplate}
void bootstrap({required PokemonsDataRepository pokemonsDataRepository}) {
  // Capture and log Flutter framework errors.
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  // Set up the global Bloc observer for state monitoring.
  Bloc.observer = const AppBlocObserver();

  /// Add cross-flavor configuration here

  ///! Note: Currently all flavors using same API.
  final pokemonRepository = PokemonsRepository(pokemonsDataRepository: pokemonsDataRepository);

  runApp(FlutterPokedexApp(pokemonsRepository: pokemonRepository));
}
