import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';

/// This class defines the variables used in the [kategori_romance_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KategoriRomanceModel extends Equatable {
  final List<Userprofilelist1ItemModel> userprofilelist1ItemList;

  const KategoriRomanceModel({this.userprofilelist1ItemList = const []});

  KategoriRomanceModel copyWith(
      {List<Userprofilelist1ItemModel>? userprofilelist1ItemList}) {
    return KategoriRomanceModel(
      userprofilelist1ItemList:
          userprofilelist1ItemList ?? this.userprofilelist1ItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilelist1ItemList];
}
