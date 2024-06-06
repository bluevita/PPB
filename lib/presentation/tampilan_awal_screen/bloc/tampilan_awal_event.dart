part of 'tampilan_awal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// TampilanAwal widget.
/// Events must be immutable and implement the [Equatable] interface.
abstract class TampilanAwalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TampilanAwal widget is first created.
class TampilanAwalInitialEvent extends TampilanAwalEvent {
  @override
  List<Object?> get props => [];
}
