part of 'pokemon_details_view_bloc.dart';

@freezed
sealed class PokemonDetailsViewEvent with _$PokemonDetailsViewEvent {
  const factory PokemonDetailsViewEvent.searchPokemonByName(String name) = _SearchPokemonByName;
}
