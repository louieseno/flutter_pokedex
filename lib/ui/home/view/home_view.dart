import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/domain/repositories/pokemons_repository.dart';
import 'package:flutter_pokedex/ui/home/controller/home_view/home_view_bloc.dart';
import 'package:flutter_pokedex/ui/home/view/pokemon_card.dart';
import 'package:go_router/go_router.dart';

@immutable
class HomeViewRoute extends GoRouteData {
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create:
          (context) =>
              HomeViewBloc(repository: context.read<PokemonsRepository>())
                ..add(const HomeViewEvent.fetchPokemons()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  Timer? _scrollDebounceTimer;
  Timer? _searchDebounceTimer;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      if (_scrollDebounceTimer?.isActive ?? false) _scrollDebounceTimer?.cancel();
      _scrollDebounceTimer = Timer(const Duration(milliseconds: 50), () {
        context.read<HomeViewBloc>().add(const HomeViewEvent.fetchNextPokemons());
      });
    }
  }

  void _onSearchChanged(String query) {
    if (_searchDebounceTimer?.isActive ?? false) _searchDebounceTimer?.cancel();
    _searchDebounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (query.isEmpty) {
        context.read<HomeViewBloc>().add(const HomeViewEvent.fetchPokemons());
        return;
      }
      context.read<HomeViewBloc>().add(HomeViewEvent.searchPokemonByName(query));
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Flutter Pokédex", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: "Search Pokémon",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onChanged: _onSearchChanged,
              ),
            ),
            Expanded(
              child: BlocBuilder<HomeViewBloc, HomeViewState>(
                builder: (context, state) {
                  switch (state.status) {
                    case HomeViewStatus.loading:
                      return const Center(child: CircularProgressIndicator());
                    case HomeViewStatus.failure:
                      return _RetryWidget(
                        label: 'Error: ${state.error}',
                        onRetry:
                            () => context.read<HomeViewBloc>().add(
                              const HomeViewEvent.fetchNextPokemons(),
                            ),
                      );
                    case HomeViewStatus.success || HomeViewStatus.fetchMore:
                      if (state.pokemons.isEmpty) {
                        return _RetryWidget(
                          label: 'No Pokemon Found',
                          onRetry: () => _onSearchChanged(_searchController.text),
                        );
                      }
                      return RefreshIndicator(
                        onRefresh: () async {
                          context.read<HomeViewBloc>().add(
                            const HomeViewEvent.fetchPokemons(refresh: true),
                          );
                          return Future.value();
                        },
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount:
                              state.pokemons.length +
                              (state.status == HomeViewStatus.fetchMore
                                  ? 1
                                  : 0), // Triggers indicator during lazy loading
                          itemBuilder: (context, index) {
                            if (index < state.pokemons.length) {
                              final pokemonDetails = state.pokemons[index];
                              return PokemonCard(pokemon: pokemonDetails);
                            } else {
                              return const Padding(
                                padding: EdgeInsets.only(bottom: 16.0),
                                child: Center(child: CircularProgressIndicator()),
                              );
                            }
                          },
                        ),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.dispose();
    _scrollDebounceTimer?.cancel();
    _searchDebounceTimer?.cancel();
    super.dispose();
  }
}

class _RetryWidget extends StatelessWidget {
  const _RetryWidget({required this.label, required this.onRetry});
  final String label;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          ElevatedButton.icon(
            onPressed: onRetry,
            icon: Icon(Icons.refresh),
            label: Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
