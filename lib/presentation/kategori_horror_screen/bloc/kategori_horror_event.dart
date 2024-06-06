part of 'kategori_horror_bloc.dart';

/// Abstract class for all events that can be dispatched from the KategoriHorror widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class KategoriHorrorEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the KategoriHorror widget is first created.
class KategoriHorrorInitialEvent extends KategoriHorrorEvent {
  @override
  List<Object?> get props => [];
}
