import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/core/mixins/type_converter_mixin.dart';
import 'package:flutter_pokedex/core/utils/pokemon_type_colors.dart';
import 'package:flutter_pokedex/domain/repositories/pokemons_repository.dart';
import 'package:flutter_pokedex/ui/common_widgets/info_row_widget.dart';
import 'package:flutter_pokedex/ui/common_widgets/retry_widget.dart';
import 'package:flutter_pokedex/ui/common_widgets/type_pill_widget.dart';
import 'package:flutter_pokedex/ui/pokemon/controller/pokemon_details_view/pokemon_details_view_bloc.dart';
import 'package:flutter_pokedex/ui/pokemon/view/widgets/abilities_widget.dart';
import 'package:flutter_pokedex/ui/pokemon/view/widgets/stats_widget.dart';
import 'package:go_router/go_router.dart';

@immutable
class PokemonDetailsViewRoute extends GoRouteData {
  const PokemonDetailsViewRoute(this.name);
  static const path = ':name';
  final String name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<PokemonDetailsViewBloc>(
      lazy: false,
      create:
          (context) =>
              PokemonDetailsViewBloc(repository: context.read<PokemonsRepository>())
                ..add(PokemonDetailsViewEvent.searchPokemonByName(name)),
      child: _PokemonDetailsView(name),
    );
  }
}

class _PokemonDetailsView extends StatelessWidget with TypeConverterMixin {
  const _PokemonDetailsView(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name.toUpperCase(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return Future.value();
        },
        child: SingleChildScrollView(
          child: BlocBuilder<PokemonDetailsViewBloc, PokemonDetailsViewState>(
            builder: (context, state) {
              switch (state.status) {
                case PokemonDetailsViewStatus.loading:
                  return const Center(child: CircularProgressIndicator());
                case PokemonDetailsViewStatus.failure:
                  return RetryWidget(
                    label: 'Error: ${state.error}',
                    onRetry:
                        () => context.read<PokemonDetailsViewBloc>().add(
                          PokemonDetailsViewEvent.searchPokemonByName(name),
                        ),
                  );
                case PokemonDetailsViewStatus.success:
                  final pokemon = state.pokemon!;
                  final colorDetails = PokemonTypeColors.fromString(pokemon.types.first.type.name);
                  return Column(
                    spacing: 8,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Image.network(pokemon.image, fit: BoxFit.contain),
                      ),
                      InfoRowWidget(label: "Weight", value: convertWeight(pokemon.weight)),
                      InfoRowWidget(label: "Height", value: convertHeight(pokemon.height)),
                      InfoRowWidget(
                        label: "Base Experience",
                        value: pokemon.baseExperience.toString(),
                      ),

                      TypePillWidget(types: pokemon.types),
                      AbilitiesWidget(
                        abilities: pokemon.abilities,
                        backgroundColor: colorDetails.backgroundColor,
                        textColor: colorDetails.textColor,
                      ),
                      StatsWidget(
                        stats: pokemon.stats,
                        backgroundColor: colorDetails.backgroundColor,
                      ),
                    ],
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
