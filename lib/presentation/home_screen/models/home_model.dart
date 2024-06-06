import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import 'listdoctorname_item_model.dart';
import 'listtitle_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  final List<UserprofileItemModel> userprofileItemList;
  final List<ListdoctornameItemModel> listdoctornameItemList;
  final List<ListtitleItemModel> listtitleItemList;

  HomeModel({
    this.userprofileItemList = const [],
    this.listdoctornameItemList = const [],
    this.listtitleItemList = const [],
  });

  HomeModel copyWith({
    List<UserprofileItemModel>? userprofileItemList,
    List<ListdoctornameItemModel>? listdoctornameItemList,
    List<ListtitleItemModel>? listtitleItemList,
  }) {
    return HomeModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
      listdoctornameItemList:
          listdoctornameItemList ?? this.listdoctornameItemList,
      listtitleItemList: listtitleItemList ?? this.listtitleItemList,
    );
  }

  @override
  List<Object?> get props =>
      [userprofileItemList, listdoctornameItemList, listtitleItemList];
}
