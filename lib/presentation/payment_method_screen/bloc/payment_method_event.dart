part of 'payment_method_bloc.dart';

/// Abstract class for all events that can be dispatched from the PaymentMethod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class PaymentMethodEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Event that is dispatched when the PaymentMethod widget is first created.
class PaymentMethodInitialEvent extends PaymentMethodEvent {
  @override
  List<Object> get props => [];
}
