part of 'kategori_action_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// KategoriAction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class KategoriActionEvent extends Equatable {
  const KategoriActionEvent();

  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the KategoriAction widget is first created.
class KategoriActionInitialEvent extends KategoriActionEvent {
  const KategoriActionInitialEvent();

  @override
  List<Object?> get props => [];
}
