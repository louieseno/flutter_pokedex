import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/feature/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/feature/home/domain/repositories/pokemons_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_event.dart';
part 'home_view_state.dart';
part 'home_view_bloc.freezed.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final PokemonsRepository repository;
  HomeViewBloc({required this.repository}) : super(HomeViewState.initial()) {
    on<_FetchPokemons>((event, emit) async {
      emit(state.copyWith(status: HomeViewStatus.loading));
      final result = await repository.fetchPokemons(refresh: event.refresh);
      switch (result) {
        case Ok<List<PokemonDetails>>():
          emit(state.copyWith(status: HomeViewStatus.success, pokemons: result.value));
        case Error<List<PokemonDetails>>():
          emit(state.copyWith(status: HomeViewStatus.failure, error: result.error.toString()));
      }
    });

    on<_FetchNextPokemons>((event, emit) async {
      emit(state.copyWith(status: HomeViewStatus.fetchMore));
      final result = await repository.fetchNextPokemons();
      switch (result) {
        case Ok<List<PokemonDetails>>():
          emit(
            state.copyWith(
              status: HomeViewStatus.success,
              pokemons: [...state.pokemons, ...result.value],
            ),
          );
        case Error<List<PokemonDetails>>():
          emit(state.copyWith(status: HomeViewStatus.failure, error: result.error.toString()));
      }
    });
  }
}
