part of 'payment_method_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the PaymentMethodTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PaymentMethodTwoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Event that is dispatched when the PaymentMethodTwo widget is first created.
class PaymentMethodTwoInitialEvent extends PaymentMethodTwoEvent {
  @override
  List<Object> get props => [];
}
