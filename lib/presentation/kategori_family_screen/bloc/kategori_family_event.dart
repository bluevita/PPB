part of 'kategori_family_bloc.dart';

/// Abstract class for all events that can be dispatched from the KategoriFamily widget.
/// Events must be immutable and implement the [Equatable] interface.
abstract class KategoriFamilyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the KategoriFamily widget is first created.
class KategoriFamilyInitialEvent extends KategoriFamilyEvent {
  @override
  List<Object?> get props => [];
}
