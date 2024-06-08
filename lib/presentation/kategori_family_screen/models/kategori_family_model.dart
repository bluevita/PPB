import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import 'userprofilelist2_item_model.dart';

/// This class defines the variables used in the [kategori_family_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class KategoriFamilyModel extends Equatable {
  const KategoriFamilyModel({this.userprofilelist2ItemList = const []});

  final List<Userprofilelist2ItemModel> userprofilelist2ItemList;

  KategoriFamilyModel copyWith(
      {List<Userprofilelist2ItemModel>? userprofilelist2ItemList}) {
    return KategoriFamilyModel(
      userprofilelist2ItemList:
          userprofilelist2ItemList ?? this.userprofilelist2ItemList,
    );
  }

  @override
  List<Object> get props => [userprofilelist2ItemList];
}
