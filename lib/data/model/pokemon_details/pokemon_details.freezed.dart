// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonDetails {

 int get id; String get name; int get weight; int get height; int get baseExperience; List<PokemonType> get types; String get image; List<PokemonAbility> get abilities; List<PokemonStat> get stats;
/// Create a copy of PokemonDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsCopyWith<PokemonDetails> get copyWith => _$PokemonDetailsCopyWithImpl<PokemonDetails>(this as PokemonDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&const DeepCollectionEquality().equals(other.stats, stats));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,weight,height,baseExperience,const DeepCollectionEquality().hash(types),image,const DeepCollectionEquality().hash(abilities),const DeepCollectionEquality().hash(stats));

@override
String toString() {
  return 'PokemonDetails(id: $id, name: $name, weight: $weight, height: $height, baseExperience: $baseExperience, types: $types, image: $image, abilities: $abilities, stats: $stats)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsCopyWith<$Res>  {
  factory $PokemonDetailsCopyWith(PokemonDetails value, $Res Function(PokemonDetails) _then) = _$PokemonDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String name, int weight, int height, int baseExperience, List<PokemonType> types, String image, List<PokemonAbility> abilities, List<PokemonStat> stats
});




}
/// @nodoc
class _$PokemonDetailsCopyWithImpl<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  _$PokemonDetailsCopyWithImpl(this._self, this._then);

  final PokemonDetails _self;
  final $Res Function(PokemonDetails) _then;

/// Create a copy of PokemonDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? weight = null,Object? height = null,Object? baseExperience = null,Object? types = null,Object? image = null,Object? abilities = null,Object? stats = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbility>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStat>,
  ));
}

}


/// @nodoc


class _PokemonDetails implements PokemonDetails {
  const _PokemonDetails({required this.id, required this.name, required this.weight, required this.height, required this.baseExperience, required final  List<PokemonType> types, required this.image, required final  List<PokemonAbility> abilities, required final  List<PokemonStat> stats}): _types = types,_abilities = abilities,_stats = stats;
  

@override final  int id;
@override final  String name;
@override final  int weight;
@override final  int height;
@override final  int baseExperience;
 final  List<PokemonType> _types;
@override List<PokemonType> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

@override final  String image;
 final  List<PokemonAbility> _abilities;
@override List<PokemonAbility> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

 final  List<PokemonStat> _stats;
@override List<PokemonStat> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}


/// Create a copy of PokemonDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailsCopyWith<_PokemonDetails> get copyWith => __$PokemonDetailsCopyWithImpl<_PokemonDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&const DeepCollectionEquality().equals(other._stats, _stats));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,weight,height,baseExperience,const DeepCollectionEquality().hash(_types),image,const DeepCollectionEquality().hash(_abilities),const DeepCollectionEquality().hash(_stats));

@override
String toString() {
  return 'PokemonDetails(id: $id, name: $name, weight: $weight, height: $height, baseExperience: $baseExperience, types: $types, image: $image, abilities: $abilities, stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailsCopyWith<$Res> implements $PokemonDetailsCopyWith<$Res> {
  factory _$PokemonDetailsCopyWith(_PokemonDetails value, $Res Function(_PokemonDetails) _then) = __$PokemonDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int weight, int height, int baseExperience, List<PokemonType> types, String image, List<PokemonAbility> abilities, List<PokemonStat> stats
});




}
/// @nodoc
class __$PokemonDetailsCopyWithImpl<$Res>
    implements _$PokemonDetailsCopyWith<$Res> {
  __$PokemonDetailsCopyWithImpl(this._self, this._then);

  final _PokemonDetails _self;
  final $Res Function(_PokemonDetails) _then;

/// Create a copy of PokemonDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? weight = null,Object? height = null,Object? baseExperience = null,Object? types = null,Object? image = null,Object? abilities = null,Object? stats = null,}) {
  return _then(_PokemonDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbility>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStat>,
  ));
}


}


/// @nodoc
mixin _$PokemonType {

 int get slot; TypeDetail get type;
/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonTypeCopyWith<PokemonType> get copyWith => _$PokemonTypeCopyWithImpl<PokemonType>(this as PokemonType, _$identity);

  /// Serializes this PokemonType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonType&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonType(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $PokemonTypeCopyWith<$Res>  {
  factory $PokemonTypeCopyWith(PokemonType value, $Res Function(PokemonType) _then) = _$PokemonTypeCopyWithImpl;
@useResult
$Res call({
 int slot, TypeDetail type
});


$TypeDetailCopyWith<$Res> get type;

}
/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._self, this._then);

  final PokemonType _self;
  final $Res Function(PokemonType) _then;

/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeDetail,
  ));
}
/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeDetailCopyWith<$Res> get type {
  
  return $TypeDetailCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PokemonType implements PokemonType {
  const _PokemonType({required this.slot, required this.type});
  factory _PokemonType.fromJson(Map<String, dynamic> json) => _$PokemonTypeFromJson(json);

@override final  int slot;
@override final  TypeDetail type;

/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonTypeCopyWith<_PokemonType> get copyWith => __$PokemonTypeCopyWithImpl<_PokemonType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonType&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonType(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PokemonTypeCopyWith<$Res> implements $PokemonTypeCopyWith<$Res> {
  factory _$PokemonTypeCopyWith(_PokemonType value, $Res Function(_PokemonType) _then) = __$PokemonTypeCopyWithImpl;
@override @useResult
$Res call({
 int slot, TypeDetail type
});


@override $TypeDetailCopyWith<$Res> get type;

}
/// @nodoc
class __$PokemonTypeCopyWithImpl<$Res>
    implements _$PokemonTypeCopyWith<$Res> {
  __$PokemonTypeCopyWithImpl(this._self, this._then);

  final _PokemonType _self;
  final $Res Function(_PokemonType) _then;

/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_PokemonType(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeDetail,
  ));
}

/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeDetailCopyWith<$Res> get type {
  
  return $TypeDetailCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$TypeDetail {

 String get name; String get url;
/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDetailCopyWith<TypeDetail> get copyWith => _$TypeDetailCopyWithImpl<TypeDetail>(this as TypeDetail, _$identity);

  /// Serializes this TypeDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TypeDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $TypeDetailCopyWith<$Res>  {
  factory $TypeDetailCopyWith(TypeDetail value, $Res Function(TypeDetail) _then) = _$TypeDetailCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$TypeDetailCopyWithImpl<$Res>
    implements $TypeDetailCopyWith<$Res> {
  _$TypeDetailCopyWithImpl(this._self, this._then);

  final TypeDetail _self;
  final $Res Function(TypeDetail) _then;

/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TypeDetail implements TypeDetail {
  const _TypeDetail({required this.name, required this.url});
  factory _TypeDetail.fromJson(Map<String, dynamic> json) => _$TypeDetailFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeDetailCopyWith<_TypeDetail> get copyWith => __$TypeDetailCopyWithImpl<_TypeDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TypeDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TypeDetailCopyWith<$Res> implements $TypeDetailCopyWith<$Res> {
  factory _$TypeDetailCopyWith(_TypeDetail value, $Res Function(_TypeDetail) _then) = __$TypeDetailCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$TypeDetailCopyWithImpl<$Res>
    implements _$TypeDetailCopyWith<$Res> {
  __$TypeDetailCopyWithImpl(this._self, this._then);

  final _TypeDetail _self;
  final $Res Function(_TypeDetail) _then;

/// Create a copy of TypeDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_TypeDetail(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PokemonAbility {

 bool get isHidden; int get slot; AbilityDetail get ability;
/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAbilityCopyWith<PokemonAbility> get copyWith => _$PokemonAbilityCopyWithImpl<PokemonAbility>(this as PokemonAbility, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAbility&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.ability, ability) || other.ability == ability));
}


@override
int get hashCode => Object.hash(runtimeType,isHidden,slot,ability);

@override
String toString() {
  return 'PokemonAbility(isHidden: $isHidden, slot: $slot, ability: $ability)';
}


}

/// @nodoc
abstract mixin class $PokemonAbilityCopyWith<$Res>  {
  factory $PokemonAbilityCopyWith(PokemonAbility value, $Res Function(PokemonAbility) _then) = _$PokemonAbilityCopyWithImpl;
@useResult
$Res call({
 bool isHidden, int slot, AbilityDetail ability
});


$AbilityDetailCopyWith<$Res> get ability;

}
/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._self, this._then);

  final PokemonAbility _self;
  final $Res Function(PokemonAbility) _then;

/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isHidden = null,Object? slot = null,Object? ability = null,}) {
  return _then(_self.copyWith(
isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityDetail,
  ));
}
/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityDetailCopyWith<$Res> get ability {
  
  return $AbilityDetailCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// @nodoc


class _PokemonAbility implements PokemonAbility {
  const _PokemonAbility({required this.isHidden, required this.slot, required this.ability});
  

@override final  bool isHidden;
@override final  int slot;
@override final  AbilityDetail ability;

/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAbilityCopyWith<_PokemonAbility> get copyWith => __$PokemonAbilityCopyWithImpl<_PokemonAbility>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAbility&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.ability, ability) || other.ability == ability));
}


@override
int get hashCode => Object.hash(runtimeType,isHidden,slot,ability);

@override
String toString() {
  return 'PokemonAbility(isHidden: $isHidden, slot: $slot, ability: $ability)';
}


}

/// @nodoc
abstract mixin class _$PokemonAbilityCopyWith<$Res> implements $PokemonAbilityCopyWith<$Res> {
  factory _$PokemonAbilityCopyWith(_PokemonAbility value, $Res Function(_PokemonAbility) _then) = __$PokemonAbilityCopyWithImpl;
@override @useResult
$Res call({
 bool isHidden, int slot, AbilityDetail ability
});


@override $AbilityDetailCopyWith<$Res> get ability;

}
/// @nodoc
class __$PokemonAbilityCopyWithImpl<$Res>
    implements _$PokemonAbilityCopyWith<$Res> {
  __$PokemonAbilityCopyWithImpl(this._self, this._then);

  final _PokemonAbility _self;
  final $Res Function(_PokemonAbility) _then;

/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isHidden = null,Object? slot = null,Object? ability = null,}) {
  return _then(_PokemonAbility(
isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityDetail,
  ));
}

/// Create a copy of PokemonAbility
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityDetailCopyWith<$Res> get ability {
  
  return $AbilityDetailCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// @nodoc
mixin _$AbilityDetail {

 String get name; String get url;
/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityDetailCopyWith<AbilityDetail> get copyWith => _$AbilityDetailCopyWithImpl<AbilityDetail>(this as AbilityDetail, _$identity);

  /// Serializes this AbilityDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'AbilityDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $AbilityDetailCopyWith<$Res>  {
  factory $AbilityDetailCopyWith(AbilityDetail value, $Res Function(AbilityDetail) _then) = _$AbilityDetailCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$AbilityDetailCopyWithImpl<$Res>
    implements $AbilityDetailCopyWith<$Res> {
  _$AbilityDetailCopyWithImpl(this._self, this._then);

  final AbilityDetail _self;
  final $Res Function(AbilityDetail) _then;

/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AbilityDetail implements AbilityDetail {
  const _AbilityDetail({required this.name, required this.url});
  factory _AbilityDetail.fromJson(Map<String, dynamic> json) => _$AbilityDetailFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityDetailCopyWith<_AbilityDetail> get copyWith => __$AbilityDetailCopyWithImpl<_AbilityDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'AbilityDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$AbilityDetailCopyWith<$Res> implements $AbilityDetailCopyWith<$Res> {
  factory _$AbilityDetailCopyWith(_AbilityDetail value, $Res Function(_AbilityDetail) _then) = __$AbilityDetailCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$AbilityDetailCopyWithImpl<$Res>
    implements _$AbilityDetailCopyWith<$Res> {
  __$AbilityDetailCopyWithImpl(this._self, this._then);

  final _AbilityDetail _self;
  final $Res Function(_AbilityDetail) _then;

/// Create a copy of AbilityDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_AbilityDetail(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PokemonStat {

 int get baseStat; int get effort; StatDetail get stat;
/// Create a copy of PokemonStat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonStatCopyWith<PokemonStat> get copyWith => _$PokemonStatCopyWithImpl<PokemonStat>(this as PokemonStat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonStat&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}


@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'PokemonStat(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $PokemonStatCopyWith<$Res>  {
  factory $PokemonStatCopyWith(PokemonStat value, $Res Function(PokemonStat) _then) = _$PokemonStatCopyWithImpl;
@useResult
$Res call({
 int baseStat, int effort, StatDetail stat
});


$StatDetailCopyWith<$Res> get stat;

}
/// @nodoc
class _$PokemonStatCopyWithImpl<$Res>
    implements $PokemonStatCopyWith<$Res> {
  _$PokemonStatCopyWithImpl(this._self, this._then);

  final PokemonStat _self;
  final $Res Function(PokemonStat) _then;

/// Create a copy of PokemonStat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatDetail,
  ));
}
/// Create a copy of PokemonStat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatDetailCopyWith<$Res> get stat {
  
  return $StatDetailCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc


class _PokemonStat implements PokemonStat {
  const _PokemonStat({required this.baseStat, required this.effort, required this.stat});
  

@override final  int baseStat;
@override final  int effort;
@override final  StatDetail stat;

/// Create a copy of PokemonStat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonStatCopyWith<_PokemonStat> get copyWith => __$PokemonStatCopyWithImpl<_PokemonStat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonStat&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}


@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'PokemonStat(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$PokemonStatCopyWith<$Res> implements $PokemonStatCopyWith<$Res> {
  factory _$PokemonStatCopyWith(_PokemonStat value, $Res Function(_PokemonStat) _then) = __$PokemonStatCopyWithImpl;
@override @useResult
$Res call({
 int baseStat, int effort, StatDetail stat
});


@override $StatDetailCopyWith<$Res> get stat;

}
/// @nodoc
class __$PokemonStatCopyWithImpl<$Res>
    implements _$PokemonStatCopyWith<$Res> {
  __$PokemonStatCopyWithImpl(this._self, this._then);

  final _PokemonStat _self;
  final $Res Function(_PokemonStat) _then;

/// Create a copy of PokemonStat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_PokemonStat(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatDetail,
  ));
}

/// Create a copy of PokemonStat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatDetailCopyWith<$Res> get stat {
  
  return $StatDetailCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$StatDetail {

 String get name; String get url;
/// Create a copy of StatDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatDetailCopyWith<StatDetail> get copyWith => _$StatDetailCopyWithImpl<StatDetail>(this as StatDetail, _$identity);

  /// Serializes this StatDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'StatDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $StatDetailCopyWith<$Res>  {
  factory $StatDetailCopyWith(StatDetail value, $Res Function(StatDetail) _then) = _$StatDetailCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$StatDetailCopyWithImpl<$Res>
    implements $StatDetailCopyWith<$Res> {
  _$StatDetailCopyWithImpl(this._self, this._then);

  final StatDetail _self;
  final $Res Function(StatDetail) _then;

/// Create a copy of StatDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _StatDetail implements StatDetail {
  const _StatDetail({required this.name, required this.url});
  factory _StatDetail.fromJson(Map<String, dynamic> json) => _$StatDetailFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of StatDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatDetailCopyWith<_StatDetail> get copyWith => __$StatDetailCopyWithImpl<_StatDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatDetail&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'StatDetail(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$StatDetailCopyWith<$Res> implements $StatDetailCopyWith<$Res> {
  factory _$StatDetailCopyWith(_StatDetail value, $Res Function(_StatDetail) _then) = __$StatDetailCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$StatDetailCopyWithImpl<$Res>
    implements _$StatDetailCopyWith<$Res> {
  __$StatDetailCopyWithImpl(this._self, this._then);

  final _StatDetail _self;
  final $Res Function(_StatDetail) _then;

/// Create a copy of StatDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_StatDetail(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
