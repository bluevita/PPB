part of 'payment_method_bloc.dart';

/// Represents the state of PaymentMethod in the application.
// ignore_for_file: must_be_immutable
class PaymentMethodState extends Equatable {
  final TextEditingController? searchController;
  final TextEditingController? conveniencefeeController;
  final PaymentMethodModel? paymentMethodModelObj;

  const PaymentMethodState({
    this.searchController,
    this.conveniencefeeController,
    this.paymentMethodModelObj,
  });

  @override
  List<Object?> get props =>
      [searchController, conveniencefeeController, paymentMethodModelObj];

  PaymentMethodState copyWith({
    TextEditingController? searchController,
    TextEditingController? conveniencefeeController,
    PaymentMethodModel? paymentMethodModelObj,
  }) {
    return PaymentMethodState(
      searchController: searchController ?? this.searchController,
      conveniencefeeController:
          conveniencefeeController ?? this.conveniencefeeController,
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
