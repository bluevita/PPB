import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/payment_method_model.dart';

part 'payment_method_event.dart';
part 'payment_method_state.dart';

/// A bloc that manages the state of a PaymentMethod according to the event that is dispatched to it.
class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  PaymentMethodBloc(PaymentMethodState initialState) : super(initialState) {
    on<PaymentMethodInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    PaymentMethodInitialEvent event,
    Emitter<PaymentMethodState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        conveniencefeeController: TextEditingController(),
      ),
    );
  }
}
