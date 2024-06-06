part of 'add_movie_bloc.dart';

/// Abstract class for all events that can be dispatched from the AddMovie widget.
/// Events must be immutable and implement the [Equatable] interface.
abstract class AddMovieEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AddMovie widget is first created.
class AddMovieInitialEvent extends AddMovieEvent {
  @override
  List<Object?> get props => [];
}
