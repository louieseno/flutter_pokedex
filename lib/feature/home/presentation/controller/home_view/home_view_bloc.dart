import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon/pokemon.dart';
import 'package:flutter_pokedex/feature/home/domain/repositories/pokemons_repository.dart';

part 'home_view_event.dart';
part 'home_view_state.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final PokemonsRepository repository;
  HomeViewBloc({required this.repository}) : super(Initial()) {
    on<FetchPokemons>((event, emit) async {
      emit(Loading());
      final result = await repository.fetchPokemons();
      switch (result) {
        case Ok<List<Pokemon>>():
          emit(Success(result.value));
        case Error<List<Pokemon>>():
          emit(Failure(result.error.toString()));
      }
    });
  }
}
