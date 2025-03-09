part of 'home_view_bloc.dart';

@immutable
sealed class HomeViewState {
  const HomeViewState();
}

final class Initial extends HomeViewState {
  const Initial();
}

final class Loading extends HomeViewState {
  const Loading();
}

final class Success extends HomeViewState {
  final List<Pokemon> pokemons;
  const Success(this.pokemons);
}

final class Failure extends HomeViewState {
  final String error;
  const Failure(this.error);
}
