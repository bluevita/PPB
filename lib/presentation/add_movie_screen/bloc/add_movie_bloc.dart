import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/add_movie_model.dart';
part 'add_movie_event.dart';
part 'add_movie_state.dart';

/// A bloc that manages the state of an AddMovie according to the event that is dispatched to it.
class AddMovieBloc extends Bloc<AddMovieEvent, AddMovieState> {
  AddMovieBloc(AddMovieState initialState) : super(initialState) {
    on<AddMovieInitialEvent>(_onInitialize);
  }

  void _onInitialize(
      AddMovieInitialEvent event, Emitter<AddMovieState> emit) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
