import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [kategori_horror_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KategoriHorrorModel extends Equatable {
  KategoriHorrorModel({required this.userprofilelistItemList});

  final List<UserprofilelistItemModel> userprofilelistItemList;

  KategoriHorrorModel copyWith({
    List<UserprofilelistItemModel>? userprofilelistItemList,
  }) {
    return KategoriHorrorModel(
      userprofilelistItemList:
          userprofilelistItemList ?? this.userprofilelistItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilelistItemList];
}
