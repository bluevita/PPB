import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/film_page_model.dart';
part 'film_page_event.dart';
part 'film_page_state.dart';

/// A bloc that manages the state of a FilmPage according to the event that is dispatched to it.
class FilmPageBloc extends Bloc<FilmPageEvent, FilmPageState> {
  FilmPageBloc(FilmPageState initialState) : super(initialState) {
    on<FilmPageInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    FilmPageInitialEvent event,
    Emitter<FilmPageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      synopsisvalueController: TextEditingController(),
    ));
  }
}
