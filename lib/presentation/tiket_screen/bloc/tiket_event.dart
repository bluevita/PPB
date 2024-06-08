part of 'tiket_bloc.dart';

abstract class TiketEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Tiket widget is first created.
class TiketInitialEvent extends TiketEvent {
  @override
  List<Object?> get props => [];
}
