// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeViewEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeViewEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeViewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeViewEvent()';
}


}

/// @nodoc
class $HomeViewEventCopyWith<$Res>  {
$HomeViewEventCopyWith(HomeViewEvent _, $Res Function(HomeViewEvent) __);
}


/// @nodoc


class _FetchPokemons with DiagnosticableTreeMixin implements HomeViewEvent {
  const _FetchPokemons({this.refresh = false});
  

@JsonKey() final  bool refresh;

/// Create a copy of HomeViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPokemonsCopyWith<_FetchPokemons> get copyWith => __$FetchPokemonsCopyWithImpl<_FetchPokemons>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeViewEvent.fetchPokemons'))
    ..add(DiagnosticsProperty('refresh', refresh));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPokemons&&(identical(other.refresh, refresh) || other.refresh == refresh));
}


@override
int get hashCode => Object.hash(runtimeType,refresh);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeViewEvent.fetchPokemons(refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class _$FetchPokemonsCopyWith<$Res> implements $HomeViewEventCopyWith<$Res> {
  factory _$FetchPokemonsCopyWith(_FetchPokemons value, $Res Function(_FetchPokemons) _then) = __$FetchPokemonsCopyWithImpl;
@useResult
$Res call({
 bool refresh
});




}
/// @nodoc
class __$FetchPokemonsCopyWithImpl<$Res>
    implements _$FetchPokemonsCopyWith<$Res> {
  __$FetchPokemonsCopyWithImpl(this._self, this._then);

  final _FetchPokemons _self;
  final $Res Function(_FetchPokemons) _then;

/// Create a copy of HomeViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? refresh = null,}) {
  return _then(_FetchPokemons(
refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _FetchNextPokemons with DiagnosticableTreeMixin implements HomeViewEvent {
  const _FetchNextPokemons();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeViewEvent.fetchNextPokemons'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNextPokemons);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeViewEvent.fetchNextPokemons()';
}


}




/// @nodoc
mixin _$HomeViewState implements DiagnosticableTreeMixin {

 HomeViewStatus get status; List<PokemonDetails> get pokemons; String? get error; bool get fetchMore;
/// Create a copy of HomeViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeViewStateCopyWith<HomeViewState> get copyWith => _$HomeViewStateCopyWithImpl<HomeViewState>(this as HomeViewState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeViewState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('pokemons', pokemons))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('fetchMore', fetchMore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeViewState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.pokemons, pokemons)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchMore, fetchMore) || other.fetchMore == fetchMore));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(pokemons),error,fetchMore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeViewState(status: $status, pokemons: $pokemons, error: $error, fetchMore: $fetchMore)';
}


}

/// @nodoc
abstract mixin class $HomeViewStateCopyWith<$Res>  {
  factory $HomeViewStateCopyWith(HomeViewState value, $Res Function(HomeViewState) _then) = _$HomeViewStateCopyWithImpl;
@useResult
$Res call({
 HomeViewStatus status, List<PokemonDetails> pokemons, String? error, bool fetchMore
});




}
/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._self, this._then);

  final HomeViewState _self;
  final $Res Function(HomeViewState) _then;

/// Create a copy of HomeViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? pokemons = null,Object? error = freezed,Object? fetchMore = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeViewStatus,pokemons: null == pokemons ? _self.pokemons : pokemons // ignore: cast_nullable_to_non_nullable
as List<PokemonDetails>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fetchMore: null == fetchMore ? _self.fetchMore : fetchMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _HomeViewState with DiagnosticableTreeMixin implements HomeViewState {
  const _HomeViewState({required this.status, required final  List<PokemonDetails> pokemons, this.error, this.fetchMore = false}): _pokemons = pokemons;
  

@override final  HomeViewStatus status;
 final  List<PokemonDetails> _pokemons;
@override List<PokemonDetails> get pokemons {
  if (_pokemons is EqualUnmodifiableListView) return _pokemons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemons);
}

@override final  String? error;
@override@JsonKey() final  bool fetchMore;

/// Create a copy of HomeViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeViewStateCopyWith<_HomeViewState> get copyWith => __$HomeViewStateCopyWithImpl<_HomeViewState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HomeViewState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('pokemons', pokemons))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('fetchMore', fetchMore));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeViewState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._pokemons, _pokemons)&&(identical(other.error, error) || other.error == error)&&(identical(other.fetchMore, fetchMore) || other.fetchMore == fetchMore));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_pokemons),error,fetchMore);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HomeViewState(status: $status, pokemons: $pokemons, error: $error, fetchMore: $fetchMore)';
}


}

/// @nodoc
abstract mixin class _$HomeViewStateCopyWith<$Res> implements $HomeViewStateCopyWith<$Res> {
  factory _$HomeViewStateCopyWith(_HomeViewState value, $Res Function(_HomeViewState) _then) = __$HomeViewStateCopyWithImpl;
@override @useResult
$Res call({
 HomeViewStatus status, List<PokemonDetails> pokemons, String? error, bool fetchMore
});




}
/// @nodoc
class __$HomeViewStateCopyWithImpl<$Res>
    implements _$HomeViewStateCopyWith<$Res> {
  __$HomeViewStateCopyWithImpl(this._self, this._then);

  final _HomeViewState _self;
  final $Res Function(_HomeViewState) _then;

/// Create a copy of HomeViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? pokemons = null,Object? error = freezed,Object? fetchMore = null,}) {
  return _then(_HomeViewState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeViewStatus,pokemons: null == pokemons ? _self._pokemons : pokemons // ignore: cast_nullable_to_non_nullable
as List<PokemonDetails>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fetchMore: null == fetchMore ? _self.fetchMore : fetchMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
