import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/feature/home/domain/repositories/pokemons_repository.dart';
import 'package:flutter_pokedex/feature/home/presentation/controller/home_view/home_view_bloc.dart';
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
                ..add(const FetchPokemons()), // Fetch on load
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
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      context.read<HomeViewBloc>().add(const FetchPokemons());
    }
  }

  void _onSearchChanged(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Pokedex")),
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
                switch (state) {
                  case Loading() || Initial():
                    return const Center(child: CircularProgressIndicator());
                  case Failure():
                    return Center(child: Text("Error: ${state.error}"));
                  case Success():
                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: state.pokemons.length,
                      itemBuilder: (context, index) {
                        final pokemon = state.pokemons[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: ListTile(
                            title: Text(pokemon.name),
                            // subtitle: Text("ID: ${index + 1}"),
                            // leading: Image.network(pokemon["image_url"] ?? ''),
                          ),
                        );
                      },
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }
}
