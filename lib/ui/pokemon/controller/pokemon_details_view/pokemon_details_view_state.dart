part of 'pokemon_details_view_bloc.dart';

enum PokemonDetailsViewStatus { loading, success, failure }

@freezed
sealed class PokemonDetailsViewState with _$PokemonDetailsViewState {
  const factory PokemonDetailsViewState({
    required PokemonDetailsViewStatus status,
    required PokemonDetails? pokemon,
    String? error,
  }) = _PokemonDetailsViewStatee;

  factory PokemonDetailsViewState.initial() {
    return const PokemonDetailsViewState(
      status: PokemonDetailsViewStatus.loading,
      pokemon: null,
      error: null,
    );
  }
}
