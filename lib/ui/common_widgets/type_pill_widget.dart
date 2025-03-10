import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/extensions/string_extension.dart';
import 'package:flutter_pokedex/core/utils/pokemon_type_colors.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';

class TypePillWidget extends StatelessWidget {
  const TypePillWidget({super.key, required this.types});

  @protected
  final List<PokemonType> types;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      children:
          types.map((info) {
            final colorDetails = PokemonTypeColors.fromString(info.type.name);
            return Chip(
              label: Text(
                colorDetails.name.toTitleCase(),
                style: TextStyle(color: colorDetails.textColor),
              ),
              backgroundColor: colorDetails.backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            );
          }).toList(),
    );
  }
}
