import 'package:equatable/equatable.dart';
import 'reservasi_item_model.dart';

/// This class defines the variables used in the [reservasi_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class ReservasiModel extends Equatable {
  ReservasiModel({this.reservasiItemList = const []});

  List<ReservasiItemModel> reservasiItemList;

  ReservasiModel copyWith({List<ReservasiItemModel>? reservasiItemList}) {
    return ReservasiModel(
      reservasiItemList: reservasiItemList ?? this.reservasiItemList,
    );
  }

  @override
  List<Object> get props => [reservasiItemList];
}
