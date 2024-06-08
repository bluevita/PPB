part of 'payment_method_one_bloc.dart';

/// Represents the state of Payment MethodOne in the application.
// ignore_for_file: must_be_immutable
class PaymentMethodOneState extends Equatable {
  const PaymentMethodOneState({this.paymentMethodOneModelObj});

  final PaymentMethodOneModel? paymentMethodOneModelObj;

  @override
  List<Object?> get props => [paymentMethodOneModelObj];

  PaymentMethodOneState copyWith(
      {PaymentMethodOneModel? paymentMethodOneModelObj}) {
    return PaymentMethodOneState(
      paymentMethodOneModelObj:
          paymentMethodOneModelObj ?? this.paymentMethodOneModelObj,
    );
  }
}
