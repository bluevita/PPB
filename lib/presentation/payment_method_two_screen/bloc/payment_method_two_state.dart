part of 'payment_method_two_bloc.dart';

/// Represents the state of Payment MethodTwo in the application.
class PaymentMethodTwoState extends Equatable {
  const PaymentMethodTwoState({
    this.searchController,
    this.conveniencefeeController,
    this.paymentMethodTwoModelObj,
  });

  final TextEditingController? searchController;
  final TextEditingController? conveniencefeeController;
  final PaymentMethodTwoModel? paymentMethodTwoModelObj;

  @override
  List<Object?> get props =>
      [searchController, conveniencefeeController, paymentMethodTwoModelObj];

  PaymentMethodTwoState copyWith({
    TextEditingController? searchController,
    TextEditingController? conveniencefeeController,
    PaymentMethodTwoModel? paymentMethodTwoModelObj,
  }) {
    return PaymentMethodTwoState(
      searchController: searchController ?? this.searchController,
      conveniencefeeController:
          conveniencefeeController ?? this.conveniencefeeController,
      paymentMethodTwoModelObj:
          paymentMethodTwoModelObj ?? this.paymentMethodTwoModelObj,
    );
  }
}
