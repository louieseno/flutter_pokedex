import 'package:flutter/material.dart';

enum PokemonTypeColors {
  normal(backgroundColor: Color(0xFFA8A77A), textColor: Colors.white),
  fighting(backgroundColor: Color(0xFFC22E28), textColor: Colors.white),
  flying(backgroundColor: Color(0xFFA98FF3), textColor: Colors.white),
  poison(backgroundColor: Color(0xFFA33EA1), textColor: Colors.white),
  ground(backgroundColor: Color(0xFFE2BF65), textColor: Colors.black),
  rock(backgroundColor: Color(0xFFB6A136), textColor: Colors.white),
  bug(backgroundColor: Color(0xFFA6B91A), textColor: Colors.white),
  ghost(backgroundColor: Color(0xFF735797), textColor: Colors.white),
  steel(backgroundColor: Color(0xFFB7B7CE), textColor: Colors.black),
  fire(backgroundColor: Color(0xFFEE8130), textColor: Colors.white),
  water(backgroundColor: Color(0xFF6390F0), textColor: Colors.white),
  grass(backgroundColor: Color(0xFF7AC74C), textColor: Colors.white),
  electric(backgroundColor: Color(0xFFF7D02C), textColor: Colors.black),
  psychic(backgroundColor: Color(0xFFF95587), textColor: Colors.white),
  ice(backgroundColor: Color(0xFF96D9D6), textColor: Colors.black),
  dragon(backgroundColor: Color(0xFF6F35FC), textColor: Colors.white),
  dark(backgroundColor: Color(0xFF705746), textColor: Colors.white),
  fairy(backgroundColor: Color(0xFFD685AD), textColor: Colors.white),
  stellar(backgroundColor: Color(0xFF646464), textColor: Colors.white), // Example color
  unknown(backgroundColor: Colors.grey, textColor: Colors.white),
  shadow(backgroundColor: Colors.black, textColor: Colors.white);

  final Color backgroundColor;
  final Color textColor;

  const PokemonTypeColors({required this.backgroundColor, required this.textColor});

  static PokemonTypeColors fromString(String value) {
    return PokemonTypeColors.values.firstWhere(
      (type) => type.name.toLowerCase() == value.toLowerCase(),
      orElse: () => PokemonTypeColors.unknown,
    );
  }
}
