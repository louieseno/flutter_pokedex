// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) => _PokemonType(
  slot: (json['slot'] as num).toInt(),
  type: TypeDetail.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PokemonTypeToJson(_PokemonType instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_TypeDetail _$TypeDetailFromJson(Map<String, dynamic> json) =>
    _TypeDetail(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$TypeDetailToJson(_TypeDetail instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
