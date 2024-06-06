import '../../../core/app_export.dart';

/// This class is used in the [listview_item_widget] screen.
// ignore_for_file: must_be_immutable
class ListviewItemModel {
  ListviewItemModel({this.image, this.text, this.id}) {
    image = image ?? ImageConstant.imgRectangle50;
    text = text ?? "KKN Di Desa Penari";
    id = id ?? "";
  }
  String? image;
  String? text;
  String? id;
}
