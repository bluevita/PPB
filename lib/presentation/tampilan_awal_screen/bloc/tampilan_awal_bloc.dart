// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/tampilan_awal_model.dart';

part 'tampilan_awal_event.dart';
part 'tampilan_awal_state.dart';

/// A bloc that manages the state of a TampilanAwal according to the event
class TampilanAwalBloc extends Bloc<TampilanAwalEvent, TampilanAwalState> {
  TampilanAwalBloc(TampilanAwalState initialState) : super(initialState) {
    on<TampilanAwalInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    TampilanAwalInitialEvent event,
    Emitter<TampilanAwalState> emit,
  ) async {
    // Initialization logic here
  }
}
