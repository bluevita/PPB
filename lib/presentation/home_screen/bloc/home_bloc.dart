import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_model.dart';
import '../models/listdoctorname_item_model.dart';
import '../models/listtitle_item_model.dart';
import '../models/userprofile_item_model.dart';

part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState);

  @override
  // ignore: override_on_non_overriding_member
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeInitialEvent) {
      yield* _mapHomeInitialEventToState(event);
    }
  }

  Stream<HomeState> _mapHomeInitialEventToState(HomeInitialEvent event) async* {
    yield state.copyWith(searchController: TextEditingController());

    yield state.copyWith(
      homeModelObj: state.homeModelObj?.copyWith(
        userprofileItemList: fillUserprofileItemList(),
        listdoctornameItemList: fillListdoctornameItemList(),
        listtitleItemList: fillListtitleItemList(),
      ),
    );
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
        romanceImage: ImageConstant.imgRomance1,
        romanceText: "Romance",
      ),
      UserprofileItemModel(
        romanceImage: ImageConstant.imgGhost1,
        romanceText: "Horor",
      ),
      UserprofileItemModel(
        romanceImage: ImageConstant.imgFamily1,
        romanceText: "Family",
      ),
      UserprofileItemModel(
        romanceImage: ImageConstant.imgAdventure1,
        romanceText: "Action",
      ),
    ];
  }

  List<ListdoctornameItemModel> fillListdoctornameItemList() {
    return [
      ListdoctornameItemModel(
        doctorImage: ImageConstant.imgRectangle64,
        doctorName: "DOCTOR STRANGE",
      ),
      ListdoctornameItemModel(
        doctorImage: ImageConstant.imgRectangle44,
        doctorName: "KKN Di Desa Penari",
      ),
      ListdoctornameItemModel(
        doctorImage: ImageConstant.imgRectangle59,
        doctorName: "My Sassy Girls",
      ),
    ];
  }

  List<ListtitleItemModel> fillListtitleItemList() {
    return [
      ListtitleItemModel(title: "NGERI-NGERI SEDAP"),
    ];
  }
}
