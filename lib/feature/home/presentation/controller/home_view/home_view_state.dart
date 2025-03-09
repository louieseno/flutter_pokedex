part of 'home_view_bloc.dart';

enum HomeViewStatus { loading, fetchMore, success, failure }

@freezed
sealed class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    required HomeViewStatus status,
    required List<PokemonDetails> pokemons,
    String? error,
    @Default(false) bool fetchMore,
  }) = _HomeViewState;

  factory HomeViewState.initial() {
    return const HomeViewState(
      status: HomeViewStatus.loading,
      pokemons: [],
      error: null,
      fetchMore: false,
    );
  }
}
