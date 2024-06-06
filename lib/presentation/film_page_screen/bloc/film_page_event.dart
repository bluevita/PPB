part of 'film_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the FilmPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class FilmPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FilmPage widget is first created.
class FilmPageInitialEvent extends FilmPageEvent {
  @override
  List<Object?> get props => [];
}
