part of 'login_bloc.dart';

/// Abstract class for all events that can be dispatched from the Login widget.
/// Events must be immutable and implement the [Equatable] interface.
abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Login widget is first created.
class LoginInitialEvent extends LoginEvent {
  const LoginInitialEvent();

  @override
  List<Object?> get props => [];
}
