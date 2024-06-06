part of 'kategori_romance_bloc.dart';

/// Abstract class for all events that can be dispatched from the KategoriRomance widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class KategoriRomanceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the KategoriRomance widget is first created.
class KategoriRomanceInitialEvent extends KategoriRomanceEvent {
  @override
  List<Object?> get props => [];
}
