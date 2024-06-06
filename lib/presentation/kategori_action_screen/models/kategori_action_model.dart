import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import 'userprofilelist3_item_model.dart';

/// This class defines the variables used in the [kategori_action_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class KategoriActionModel extends Equatable {
  KategoriActionModel({this.userprofilelist3ItemList = const []});

  List<Userprofilelist3ItemModel> userprofilelist3ItemList;

  KategoriActionModel copyWith(
      {List<Userprofilelist3ItemModel>? userprofilelist3ItemList}) {
    return KategoriActionModel(
      userprofilelist3ItemList:
          userprofilelist3ItemList ?? this.userprofilelist3ItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilelist3ItemList];
}
