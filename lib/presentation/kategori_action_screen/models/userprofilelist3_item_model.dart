import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist3_item_widget] screen.
// ignore_for_file: must_be_immutable
class Userprofilelist3ItemModel {
  Userprofilelist3ItemModel({
    this.dynamicText,
    this.dynamicImage,
    this.dynamicText1,
    this.dynamicText2,
    this.id,
  }) {
    dynamicText = dynamicText ??
        "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl";
    dynamicImage = dynamicImage ?? ImageConstant.imgRectangle67102x100;
    dynamicText1 = dynamicText1 ?? "DOCTOR STRANGE";
    dynamicText2 = dynamicText2 ??
        "Perjalanan ke tempat yang tidak diketahui bersama Doctor Strange, dengan bantuan sekutu mistis baik lama maupun baru.";
    id = id ?? "";
  }

  String? dynamicText;
  String? dynamicImage;
  String? dynamicText1;
  String? dynamicText2;
  String? id;
}
