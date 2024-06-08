import 'dart:core';

// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/history_model.dart';
import '../models/listview_item_model.dart';

part 'history_event.dart';
part 'history_state.dart';

/// A bloc that manages the state of a History according to the event that is dispatched to it.
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(HistoryState initialState) : super(initialState) {
    on<HistoryInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    HistoryInitialEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(
      historyModelObj: state.historyModelObj?.copyWith(
        listviewItemList: fillListviewItemList(),
      ),
    ));
  }

  List<ListviewItemModel> fillListviewItemList() {
    return [
      ListviewItemModel(
        image: ImageConstant.imgRectangle50,
        text: "KKN Di Desa Penari",
      ),
      ListviewItemModel(
        image: ImageConstant.imgRectangle50137x308,
        text: "Keluarga Cemara 2",
      ),
      ListviewItemModel(
        image: ImageConstant.imgRectangle50,
        text: "KKN Di Desa Penari",
      ),
    ];
  }
}
