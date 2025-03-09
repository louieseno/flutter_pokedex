part of 'home_view_bloc.dart';

@immutable
sealed class HomeViewEvent {
  const HomeViewEvent();
}

class FetchPokemons extends HomeViewEvent {
  const FetchPokemons();
}
