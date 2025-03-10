part of 'home_view_bloc.dart';

@freezed
sealed class HomeViewEvent with _$HomeViewEvent {
  const factory HomeViewEvent.fetchPokemons({@Default(false) bool refresh}) = _FetchPokemons;
  const factory HomeViewEvent.fetchNextPokemons() = _FetchNextPokemons;
  const factory HomeViewEvent.searchPokemonByName(String name) = _SearchPokemonByName;
}
