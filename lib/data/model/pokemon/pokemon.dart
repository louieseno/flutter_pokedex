import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
sealed class Pokemon with _$Pokemon {
  const factory Pokemon({required String name, required String url}) = _Pokemon;

  factory Pokemon.fromJson(Map<String, Object?> json) => _$PokemonFromJson(json);
}
