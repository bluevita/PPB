import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.dynamicText,
    this.dynamicImage,
    this.dynamicText1,
    this.dynamicText2,
    this.id,
  }) {
    dynamicText ??=
        "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl";
    dynamicImage ??= ImageConstant.imgRectangle67;
    dynamicText1 ??= "KKN Di Desa Penari";
    dynamicText2 ??=
        "KKN Desa Penari merupakan sebuah film horor yang diangkat dari kisah nyata enam mahasiswa.";
    id ??= "";
  }

  String? dynamicText;
  String? dynamicImage;
  String? dynamicText1;
  String? dynamicText2;
  String? id;
}
