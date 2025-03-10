import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/core/utils/result.dart';
import 'package:flutter_pokedex/data/model/pokemon_details/pokemon_details.dart';
import 'package:flutter_pokedex/domain/repositories/pokemons_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_view_event.dart';
part 'pokemon_details_view_state.dart';
part 'pokemon_details_view_bloc.freezed.dart';

class PokemonDetailsViewBloc extends Bloc<PokemonDetailsViewEvent, PokemonDetailsViewState> {
  PokemonDetailsViewBloc({required this.repository}) : super(PokemonDetailsViewState.initial()) {
    on<_SearchPokemonByName>((event, emit) async {
      emit(state.copyWith(status: PokemonDetailsViewStatus.loading));
      final result = await repository.searchPokemonByName(event.name);
      switch (result) {
        case Ok<PokemonDetails?>():
          emit(state.copyWith(status: PokemonDetailsViewStatus.success, pokemon: result.value));
        case Error<PokemonDetails?>():
          emit(
            state.copyWith(
              status: PokemonDetailsViewStatus.failure,
              error: result.error.toString(),
            ),
          );
      }
    });
  }

  @protected
  final PokemonsRepository repository;
}
