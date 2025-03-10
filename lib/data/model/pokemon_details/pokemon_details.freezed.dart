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

 int get id; String get name; int get weight; int get height; int get baseExperience; List<PokemonType> get types; String get image;
/// Create a copy of PokemonDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsCopyWith<PokemonDetails> get copyWith => _$PokemonDetailsCopyWithImpl<PokemonDetails>(this as PokemonDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,weight,height,baseExperience,const DeepCollectionEquality().hash(types),image);

@override
String toString() {
  return 'PokemonDetails(id: $id, name: $name, weight: $weight, height: $height, baseExperience: $baseExperience, types: $types, image: $image)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsCopyWith<$Res>  {
  factory $PokemonDetailsCopyWith(PokemonDetails value, $Res Function(PokemonDetails) _then) = _$PokemonDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String name, int weight, int height, int baseExperience, List<PokemonType> types, String image
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? weight = null,Object? height = null,Object? baseExperience = null,Object? types = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _PokemonDetails implements PokemonDetails {
  const _PokemonDetails({required this.id, required this.name, required this.weight, required this.height, required this.baseExperience, required final  List<PokemonType> types, required this.image}): _types = types;
  

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

/// Create a copy of PokemonDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailsCopyWith<_PokemonDetails> get copyWith => __$PokemonDetailsCopyWithImpl<_PokemonDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,weight,height,baseExperience,const DeepCollectionEquality().hash(_types),image);

@override
String toString() {
  return 'PokemonDetails(id: $id, name: $name, weight: $weight, height: $height, baseExperience: $baseExperience, types: $types, image: $image)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailsCopyWith<$Res> implements $PokemonDetailsCopyWith<$Res> {
  factory _$PokemonDetailsCopyWith(_PokemonDetails value, $Res Function(_PokemonDetails) _then) = __$PokemonDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int weight, int height, int baseExperience, List<PokemonType> types, String image
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? weight = null,Object? height = null,Object? baseExperience = null,Object? types = null,Object? image = null,}) {
  return _then(_PokemonDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
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

// dart format on
