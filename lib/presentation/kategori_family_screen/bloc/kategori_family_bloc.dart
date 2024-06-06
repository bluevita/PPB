// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/kategori_family_model.dart';
import '../models/userprofilelist2_item_model.dart';
part 'kategori_family_event.dart';
part 'kategori_family_state.dart';

/// A bloc that manages the state of a KategoriFamily according to the event that is dispatched to it.
class KategoriFamilyBloc
    extends Bloc<KategoriFamilyEvent, KategoriFamilyState> {
  KategoriFamilyBloc(KategoriFamilyState initialState) : super(initialState) {
    on<KategoriFamilyInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    KategoriFamilyInitialEvent event,
    Emitter<KategoriFamilyState> emit,
  ) async {
    emit(state.copyWith(
      kategoriFamilyModelObj: state.kategoriFamilyModelObj?.copyWith(
        userprofilelist2ItemList: fillUserprofilelist2ItemList(),
      ),
    ));
  }

  List<Userprofilelist2ItemModel> fillUserprofilelist2ItemList() {
    return [
      Userprofilelist2ItemModel(
          blablablablalsa:
              "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl",
          userImage: ImageConstant.imgRectangle60,
          movieTitle: "Keluarga Cemara 2",
          movieDescriptio:
              "Setelah jatuh miskin, Emak dan Abah bertahan hidup di desa. Ingin sejahtera, tapi lupa dengan kebahagiaan anak-anaknya.")
    ];
  }
}
