import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/ui/home/view/home_view.dart';
import 'package:flutter_pokedex/ui/pokemon/view/pokemon_details_view.dart';
import 'package:go_router/go_router.dart';

part 'app_route.g.dart';

/// {@template root_route}
/// The root route of the Flutter Pokedex application.
///
/// This serves as a parent route that can be used for global wrappers,
/// such as authentication guards, layout structures, or global state handling.
///
/// Since it does not render any UI directly, it returns an empty `SizedBox`.
/// {@endtemplate}
@TypedGoRoute<RootRoute>(
  path: RootRoute.path,
  routes: [
    TypedGoRoute<HomeViewRoute>(
      path: HomeViewRoute.path,
      routes: [TypedGoRoute<PokemonDetailsViewRoute>(path: PokemonDetailsViewRoute.path)],
    ),
  ],
)
class RootRoute extends GoRouteData {
  /// {@macro root_route}
  const RootRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const SizedBox();
}

/// {@template app_route}
/// Centralized configuration for the application's router.
///
/// This class provides a singleton instance of [GoRouter], ensuring that
/// all route definitions are handled through the generated `$appRoutes` list.
///
/// It also enables logging for easier debugging of navigation flow.
/// {@endtemplate}
final class AppRoute {
  AppRoute._();

  /// Flutter Pokedex Application App router
  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: HomeViewRoute.path,
    routes: $appRoutes,
    redirect: (context, state) {
      final isEmptyOrRoot = state.uri.path.isEmpty || state.uri.path == '/';
      if (isEmptyOrRoot) {
        return HomeViewRoute.path;
      }
      return null;
    },
  );
}
