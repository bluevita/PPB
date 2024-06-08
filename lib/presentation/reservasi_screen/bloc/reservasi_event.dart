part of 'reservasi_bloc.dart';

/// Abstract class for all events that can be dispatched from the Reservasi widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class ReservasiEvent extends Equatable {
  const ReservasiEvent();

  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Reservasi widget is first created.
class ReservasiInitialEvent extends ReservasiEvent {
  @override
  List<Object?> get props => [];
}
