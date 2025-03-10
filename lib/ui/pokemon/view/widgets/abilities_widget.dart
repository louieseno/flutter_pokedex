import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/extensions/string_extension.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';

class AbilitiesWidget extends StatelessWidget {
  const AbilitiesWidget({
    super.key,
    required this.abilities,
    required this.backgroundColor,
    required this.textColor,
  });

  @protected
  final List<PokemonAbility> abilities;

  @protected
  final Color backgroundColor;

  @protected
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: backgroundColor.withAlpha(90),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Abilities', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children:
                    abilities
                        .map(
                          (info) => Chip(
                            label: Text(
                              info.ability.name.toTitleCase(),
                              style: TextStyle(color: textColor),
                            ),
                            backgroundColor: backgroundColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
