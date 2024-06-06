import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  String? blablablablalsa;
  String? userImage;
  String? subheading;
  String? description;
  String? id;

  Userprofilelist1ItemModel({
    this.blablablablalsa,
    this.userImage,
    this.subheading,
    this.description,
    this.id,
  }) {
    this.blablablablalsa = blablablablalsa ??
        "blablablablalsaklsdklskcnkjckdjcl kjskjlxklsklk kn kjlkalksl";
    this.userImage = userImage ?? ImageConstant.imgRectangle63;
    this.subheading = subheading ?? "Cinta Subuh";
    this.description = description ??
        "Mahasiswa laki-laki yang jarang salat tepat waktu, jatuh cinta kepada Ratih, perempuan muda cerdas dan relijius.";
    this.id = id ?? "";
  }
}
