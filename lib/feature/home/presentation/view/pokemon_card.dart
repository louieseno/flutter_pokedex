import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/mixins/type_converter_mixin.dart';
import 'package:flutter_pokedex/core/utils/pokemon_type_colors.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon_details/pokemon_details.dart';

class PokemonCard extends StatelessWidget with TypeConverterMixin {
  const PokemonCard({super.key, required this.pokemon});
  final PokemonDetails pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  Wrap(
                    children:
                        pokemon.types.map((info) {
                          final details = PokemonTypeColors.fromString(info.type.name);
                          return _TypePill(pokemonTypeColors: details);
                        }).toList(),
                  ),
                  _BuildPokemonInfoRow(label: "Weight", value: convertWeight(pokemon.weight)),
                  _BuildPokemonInfoRow(label: "Height", value: convertHeight(pokemon.height)),
                  _BuildPokemonInfoRow(
                    label: "Base Experience",
                    value: pokemon.baseExperience.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TypePill extends StatelessWidget {
  const _TypePill({required this.pokemonTypeColors});
  final PokemonTypeColors pokemonTypeColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: pokemonTypeColors.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        pokemonTypeColors.name.toUpperCase(),
        style: TextStyle(color: pokemonTypeColors.textColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _BuildPokemonInfoRow extends StatelessWidget {
  const _BuildPokemonInfoRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 14),
          children: [
            TextSpan(text: "$label: ", style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
