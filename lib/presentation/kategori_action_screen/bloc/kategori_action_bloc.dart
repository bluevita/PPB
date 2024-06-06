// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/kategori_action_model.dart';
import '../models/userprofilelist3_item_model.dart';
part 'kategori_action_event.dart';
part 'kategori_action_state.dart';

/// A bloc that manages the state of a KategoriAction according to the event that is dispatched to it.
class KategoriActionBloc
    extends Bloc<KategoriActionEvent, KategoriActionState> {
  KategoriActionBloc(KategoriActionState initialState) : super(initialState) {
    on<KategoriActionInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(KategoriActionInitialEvent event,
      Emitter<KategoriActionState> emit) async {
    emit(state.copyWith(
      kategoriActionModelObj: state.kategoriActionModelObj?.copyWith(
        userprofilelist3ItemList: fillUserprofilelist3ItemList(),
      ),
    ));
  }

  List<Userprofilelist3ItemModel> fillUserprofilelist3ItemList() {
    return [
      Userprofilelist3ItemModel(
        dynamicText:
            "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl",
        dynamicImage: ImageConstant.imgRectangle67102x100,
        dynamicText1: "DOCTOR STRANGE",
        dynamicText2:
            "Perjalanan ke tempat yang tidak diketahui bersama Doctor Strange, dengan bantuan sekutu mistis baik lama maupun baru.",
      ),
    ];
  }
}
