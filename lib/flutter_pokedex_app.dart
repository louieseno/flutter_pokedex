import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/core/routes/app_route.dart';
import 'package:flutter_pokedex/domain/repositories/pokemons_repository.dart';

class FlutterPokedexApp extends StatelessWidget {
  const FlutterPokedexApp({required this.pokemonsRepository, super.key});
  final PokemonsRepository pokemonsRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(value: pokemonsRepository, child: const _AppView());
  }
}

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
      title: 'Flutter Pokedex',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
    );
  }
}
