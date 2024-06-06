import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  String? romanceImage;
  String? romanceText;
  String? id;

  UserprofileItemModel({this.romanceImage, this.romanceText, this.id}) {
    romanceImage = romanceImage ?? ImageConstant.imgRomance1;
    romanceText = romanceText ?? "Romance";
    id = id ?? "";
  }
}
