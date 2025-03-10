// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonDetailsViewEvent {

 String get name;
/// Create a copy of PokemonDetailsViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsViewEventCopyWith<PokemonDetailsViewEvent> get copyWith => _$PokemonDetailsViewEventCopyWithImpl<PokemonDetailsViewEvent>(this as PokemonDetailsViewEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailsViewEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'PokemonDetailsViewEvent(name: $name)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsViewEventCopyWith<$Res>  {
  factory $PokemonDetailsViewEventCopyWith(PokemonDetailsViewEvent value, $Res Function(PokemonDetailsViewEvent) _then) = _$PokemonDetailsViewEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$PokemonDetailsViewEventCopyWithImpl<$Res>
    implements $PokemonDetailsViewEventCopyWith<$Res> {
  _$PokemonDetailsViewEventCopyWithImpl(this._self, this._then);

  final PokemonDetailsViewEvent _self;
  final $Res Function(PokemonDetailsViewEvent) _then;

/// Create a copy of PokemonDetailsViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _SearchPokemonByName implements PokemonDetailsViewEvent {
  const _SearchPokemonByName(this.name);
  

@override final  String name;

/// Create a copy of PokemonDetailsViewEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPokemonByNameCopyWith<_SearchPokemonByName> get copyWith => __$SearchPokemonByNameCopyWithImpl<_SearchPokemonByName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPokemonByName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'PokemonDetailsViewEvent.searchPokemonByName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SearchPokemonByNameCopyWith<$Res> implements $PokemonDetailsViewEventCopyWith<$Res> {
  factory _$SearchPokemonByNameCopyWith(_SearchPokemonByName value, $Res Function(_SearchPokemonByName) _then) = __$SearchPokemonByNameCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$SearchPokemonByNameCopyWithImpl<$Res>
    implements _$SearchPokemonByNameCopyWith<$Res> {
  __$SearchPokemonByNameCopyWithImpl(this._self, this._then);

  final _SearchPokemonByName _self;
  final $Res Function(_SearchPokemonByName) _then;

/// Create a copy of PokemonDetailsViewEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_SearchPokemonByName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PokemonDetailsViewState {

 PokemonDetailsViewStatus get status; PokemonDetails? get pokemon; String? get error;
/// Create a copy of PokemonDetailsViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsViewStateCopyWith<PokemonDetailsViewState> get copyWith => _$PokemonDetailsViewStateCopyWithImpl<PokemonDetailsViewState>(this as PokemonDetailsViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailsViewState&&(identical(other.status, status) || other.status == status)&&(identical(other.pokemon, pokemon) || other.pokemon == pokemon)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pokemon,error);

@override
String toString() {
  return 'PokemonDetailsViewState(status: $status, pokemon: $pokemon, error: $error)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsViewStateCopyWith<$Res>  {
  factory $PokemonDetailsViewStateCopyWith(PokemonDetailsViewState value, $Res Function(PokemonDetailsViewState) _then) = _$PokemonDetailsViewStateCopyWithImpl;
@useResult
$Res call({
 PokemonDetailsViewStatus status, PokemonDetails? pokemon, String? error
});


$PokemonDetailsCopyWith<$Res>? get pokemon;

}
/// @nodoc
class _$PokemonDetailsViewStateCopyWithImpl<$Res>
    implements $PokemonDetailsViewStateCopyWith<$Res> {
  _$PokemonDetailsViewStateCopyWithImpl(this._self, this._then);

  final PokemonDetailsViewState _self;
  final $Res Function(PokemonDetailsViewState) _then;

/// Create a copy of PokemonDetailsViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? pokemon = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonDetailsViewStatus,pokemon: freezed == pokemon ? _self.pokemon : pokemon // ignore: cast_nullable_to_non_nullable
as PokemonDetails?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PokemonDetailsViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonDetailsCopyWith<$Res>? get pokemon {
    if (_self.pokemon == null) {
    return null;
  }

  return $PokemonDetailsCopyWith<$Res>(_self.pokemon!, (value) {
    return _then(_self.copyWith(pokemon: value));
  });
}
}


/// @nodoc


class _PokemonDetailsViewStatee implements PokemonDetailsViewState {
  const _PokemonDetailsViewStatee({required this.status, required this.pokemon, this.error});
  

@override final  PokemonDetailsViewStatus status;
@override final  PokemonDetails? pokemon;
@override final  String? error;

/// Create a copy of PokemonDetailsViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailsViewStateeCopyWith<_PokemonDetailsViewStatee> get copyWith => __$PokemonDetailsViewStateeCopyWithImpl<_PokemonDetailsViewStatee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailsViewStatee&&(identical(other.status, status) || other.status == status)&&(identical(other.pokemon, pokemon) || other.pokemon == pokemon)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,pokemon,error);

@override
String toString() {
  return 'PokemonDetailsViewState(status: $status, pokemon: $pokemon, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailsViewStateeCopyWith<$Res> implements $PokemonDetailsViewStateCopyWith<$Res> {
  factory _$PokemonDetailsViewStateeCopyWith(_PokemonDetailsViewStatee value, $Res Function(_PokemonDetailsViewStatee) _then) = __$PokemonDetailsViewStateeCopyWithImpl;
@override @useResult
$Res call({
 PokemonDetailsViewStatus status, PokemonDetails? pokemon, String? error
});


@override $PokemonDetailsCopyWith<$Res>? get pokemon;

}
/// @nodoc
class __$PokemonDetailsViewStateeCopyWithImpl<$Res>
    implements _$PokemonDetailsViewStateeCopyWith<$Res> {
  __$PokemonDetailsViewStateeCopyWithImpl(this._self, this._then);

  final _PokemonDetailsViewStatee _self;
  final $Res Function(_PokemonDetailsViewStatee) _then;

/// Create a copy of PokemonDetailsViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? pokemon = freezed,Object? error = freezed,}) {
  return _then(_PokemonDetailsViewStatee(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PokemonDetailsViewStatus,pokemon: freezed == pokemon ? _self.pokemon : pokemon // ignore: cast_nullable_to_non_nullable
as PokemonDetails?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PokemonDetailsViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonDetailsCopyWith<$Res>? get pokemon {
    if (_self.pokemon == null) {
    return null;
  }

  return $PokemonDetailsCopyWith<$Res>(_self.pokemon!, (value) {
    return _then(_self.copyWith(pokemon: value));
  });
}
}

// dart format on
