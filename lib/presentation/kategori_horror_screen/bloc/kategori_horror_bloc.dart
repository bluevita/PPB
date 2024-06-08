// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../kategori_horror_screen/models/kategori_horror_model.dart';
import '../models/userprofilelist_item_model.dart';
part '../../kategori_horror_screen/bloc/kategori_horror_event.dart';
part '../../kategori_horror_screen/bloc/kategori_horror_state.dart';

/// A bloc that manages the state of a Kategori Horror according to the event that is dispatched to it.
class KategoriHorrorBloc
    extends Bloc<KategoriHorrorEvent, KategoriHorrorState> {
  KategoriHorrorBloc(KategoriHorrorState initialState) : super(initialState);

  @override
  // ignore: override_on_non_overriding_member
  Stream<KategoriHorrorState> mapEventToState(
      KategoriHorrorEvent event) async* {
    if (event is KategoriHorrorInitialEvent) {
      yield* _onInitialize(event);
    }
  }

  Stream<KategoriHorrorState> _onInitialize(
      KategoriHorrorInitialEvent event) async* {
    yield state.copyWith(
      kategoriHorrorModelObj: state.kategoriHorrorModelObj?.copyWith(
        userprofilelistItemList: fillUserprofilelistItemList(),
      ),
    );
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
        dynamicText:
            "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl",
        dynamicImage: ImageConstant.imgRectangle67,
        dynamicText1: "KKN Di Desa Penari",
        dynamicText2:
            "KKN Desa Penari merupakan sebuah film horor yang diangkat dari kisah nyata enam mahasiswa.",
      )
    ];
  }
}
