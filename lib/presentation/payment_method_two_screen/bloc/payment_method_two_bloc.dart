import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/payment_method_two_model.dart';

part 'payment_method_two_event.dart';
part 'payment_method_two_state.dart';

/// A bloc that manages the state of a PaymentMethod Two according to the event that is dispatched to it.
class PaymentMethodTwoBloc
    extends Bloc<PaymentMethodTwoEvent, PaymentMethodTwoState> {
  PaymentMethodTwoBloc(PaymentMethodTwoState initialState)
      : super(initialState);

  @override
  // ignore: override_on_non_overriding_member
  Stream<PaymentMethodTwoState> mapEventToState(
      PaymentMethodTwoEvent event) async* {
    if (event is PaymentMethodTwoInitialEvent) {
      yield* _onInitialize(event);
    }
  }

  Stream<PaymentMethodTwoState> _onInitialize(
      PaymentMethodTwoInitialEvent event) async* {
    yield state.copyWith(
      searchController: TextEditingController(),
      conveniencefeeController: TextEditingController(),
    );
  }
}
