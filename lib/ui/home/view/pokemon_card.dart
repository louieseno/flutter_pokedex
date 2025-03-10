import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/mixins/type_converter_mixin.dart';
import 'package:flutter_pokedex/core/routes/app_route.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/ui/common_widgets/info_row_widget.dart';
import 'package:flutter_pokedex/ui/common_widgets/type_pill_widget.dart';
import 'package:flutter_pokedex/ui/pokemon/view/pokemon_details_view.dart';

class PokemonCard extends StatelessWidget with TypeConverterMixin {
  const PokemonCard({super.key, required this.pokemon});
  final PokemonDetails pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => PokemonDetailsViewRoute(pokemon.name).go(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(pokemon.image, width: 100, height: 100, fit: BoxFit.contain),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pokemon.name.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 4),
                    TypePillWidget(types: pokemon.types),
                    InfoRowWidget(label: "Weight", value: convertWeight(pokemon.weight)),
                    InfoRowWidget(label: "Height", value: convertHeight(pokemon.height)),
                    InfoRowWidget(
                      label: "Base Experience",
                      value: pokemon.baseExperience.toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
