import '../../../core/app_export.dart';

/// This class is used in the [listdoctorname_item_widget] screen.
class ListdoctornameItemModel {
  String? doctorImage;
  String? doctorName;
  String? id;

  ListdoctornameItemModel({this.doctorImage, this.doctorName, this.id}) {
    doctorImage = doctorImage ?? ImageConstant.imgRectangle64;
    doctorName = doctorName ?? "DOCTOR STRANGE";
    id = id ?? "";
  }
}
