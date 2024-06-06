part of 'home_bloc.dart';

/// Abstract class for all events that can be dispatched from the Home widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

/// Event that is dispatched when the Home widget is first created.
class HomeInitialEvent extends HomeEvent {
  const HomeInitialEvent();

  @override
  List<Object> get props => [];
}
