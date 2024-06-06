part of 'payment_method_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the PaymentMethodOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class PaymentMethodOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PaymentMethodOne widget is first created.
class PaymentMethodOneInitialEvent extends PaymentMethodOneEvent {
  @override
  List<Object?> get props => [];
}
