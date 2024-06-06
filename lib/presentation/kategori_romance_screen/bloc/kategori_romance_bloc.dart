// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/kategori_romance_model.dart';
import '../models/userprofilelist1_item_model.dart';

part 'kategori_romance_event.dart';
part 'kategori_romance_state.dart';

/// A bloc that manages the state of a Kategori Romance according to the event that is dispatched to it.
class KategoriRomanceBloc
    extends Bloc<KategoriRomanceEvent, KategoriRomanceState> {
  KategoriRomanceBloc(KategoriRomanceState initialState) : super(initialState) {
    on<KategoriRomanceInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    KategoriRomanceInitialEvent event,
    Emitter<KategoriRomanceState> emit,
  ) async {
    emit(state.copyWith(
      kategoriRomanceModelObj: state.kategoriRomanceModelObj?.copyWith(
        userprofilelist1ItemList: fillUserprofilelist1ItemList(),
      ),
    ));
  }
}

List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
  return [
    Userprofilelist1ItemModel(
      blablablablalsa:
          "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl",
      userImage: ImageConstant.imgRectangle63,
      subheading: "Cinta Subuh",
      description:
          "Mahasiswa laki-laki yang jarang salat tepat waktu, jatuh cinta kepada Ratih, perempuan muda cerdas dan relijius.",
    ),
  ];
}
