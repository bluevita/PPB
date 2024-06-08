// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/reservasi_item_model.dart';
import '../models/reservasi_model.dart';

part 'reservasi_event.dart';
part 'reservasi_state.dart';

/// A bloc that manages the state of a Reservasi according to the event that is dispatched to it.
class ReservasiBloc extends Bloc<ReservasiEvent, ReservasiState> {
  ReservasiBloc(ReservasiState initialState) : super(initialState) {
    on<ReservasiInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    ReservasiInitialEvent event,
    Emitter<ReservasiState> emit,
  ) async {
    emit(state.copyWith(
      reservasiModelObj: state.reservasiModelObj?.copyWith(
        reservasiItemList: fillReservasiItemList(),
      ),
    ));
  }

  List<ReservasiItemModel> fillReservasiItemList() {
    return [
      ReservasiItemModel(time: "11:30"),
      ReservasiItemModel(time: "15:30"),
      ReservasiItemModel(time: "16:30"),
    ];
  }
}
