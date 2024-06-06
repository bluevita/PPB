part of 'history_bloc.dart';

/// Abstract class for all events that can be dispatched from the History widget.
/// Events must be immutable and implement the [Equatable] interface.
abstract class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the History widget is first created.
class HistoryInitialEvent extends HistoryEvent {
  const HistoryInitialEvent();

  @override
  List<Object?> get props => [];
}
