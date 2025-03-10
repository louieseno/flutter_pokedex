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
    required List<PokemonAbility> abilities,
    required List<PokemonStat> stats,
  }) = _PokemonDetails;

  /// Custom `fromJson` to map nested fields
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
      abilities:
          (json['abilities'] as List<dynamic>)
              .map((abilityJson) => PokemonAbility.fromJson(abilityJson as Map<String, dynamic>))
              .toList(),
      stats:
          (json['stats'] as List<dynamic>)
              .map((statJson) => PokemonStat.fromJson(statJson as Map<String, dynamic>))
              .toList(),
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

@freezed
sealed class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    required bool isHidden,
    required int slot,
    required AbilityDetail ability,
  }) = _PokemonAbility;

  factory PokemonAbility.fromJson(Map<String, dynamic> json) {
    return PokemonAbility(
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
      ability: AbilityDetail.fromJson(json['ability'] as Map<String, dynamic>),
    );
  }
}

@freezed
sealed class AbilityDetail with _$AbilityDetail {
  const factory AbilityDetail({required String name, required String url}) = _AbilityDetail;

  factory AbilityDetail.fromJson(Map<String, dynamic> json) => _$AbilityDetailFromJson(json);
}

@freezed
sealed class PokemonStat with _$PokemonStat {
  const factory PokemonStat({
    required int baseStat,
    required int effort,
    required StatDetail stat,
  }) = _PokemonStat;

  factory PokemonStat.fromJson(Map<String, dynamic> json) {
    return PokemonStat(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      stat: StatDetail.fromJson(json['stat'] as Map<String, dynamic>),
    );
  }
}

@freezed
sealed class StatDetail with _$StatDetail {
  const factory StatDetail({required String name, required String url}) = _StatDetail;

  factory StatDetail.fromJson(Map<String, dynamic> json) => _$StatDetailFromJson(json);
}
