// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/payment_method_one_model.dart';
part 'payment_method_one_event.dart';
part 'payment_method_one_state.dart';

/// A bloc that manages the state of a PaymentMethodOne according to the event that is dispatched to it.
class PaymentMethodOneBloc
    extends Bloc<PaymentMethodOneEvent, PaymentMethodOneState> {
  PaymentMethodOneBloc(PaymentMethodOneState initialState)
      : super(initialState) {
    on<PaymentMethodOneInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    PaymentMethodOneInitialEvent event,
    Emitter<PaymentMethodOneState> emit,
  ) async {
    // Add your initialization logic here
  }
}
