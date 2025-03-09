import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@freezed
sealed class PokemonDetails with _$PokemonDetails {
  const factory PokemonDetails({
    required int id,
    required String name,
    required int weight,
    required int height,
    required int baseExperience,
    required List<PokemonType> types,
    required String image,
  }) = _PokemonDetails;

  /// Custom `fromJson` to map nested `sprites` field
  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    return PokemonDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
      height: json['height'] as int,
      baseExperience: json['base_experience'] as int,
      types:
          (json['types'] as List<dynamic>)
              .map((typeJson) => PokemonType.fromJson(typeJson as Map<String, dynamic>))
              .toList(),
      image: json['sprites']['other']['official-artwork']['front_default'] as String,
    );
  }
}

@freezed
sealed class PokemonType with _$PokemonType {
  const factory PokemonType({required int slot, required TypeDetail type}) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) => _$PokemonTypeFromJson(json);
}

@freezed
sealed class TypeDetail with _$TypeDetail {
  const factory TypeDetail({required String name, required String url}) = _TypeDetail;

  factory TypeDetail.fromJson(Map<String, dynamic> json) => _$TypeDetailFromJson(json);
}
