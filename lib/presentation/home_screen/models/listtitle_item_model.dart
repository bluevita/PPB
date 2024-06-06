/// This class is used in the [listtitle_item_widget] screen.
// ignore_for_file: must_be_immutable
class ListtitleItemModel {
  ListtitleItemModel({this.title, this.id}) {
    title = title ?? "NGERI-NGERI SEDAP";
    id = id ?? "";
  }
  String? title;
  String? id;
}
