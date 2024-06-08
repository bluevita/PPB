import 'package:equatable/equatable.dart';
import 'listview_item_model.dart';

/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class HistoryModel extends Equatable {
  final List<ListviewItemModel> listviewItemList;

  const HistoryModel({this.listviewItemList = const []});

  HistoryModel copyWith({List<ListviewItemModel>? listviewItemList}) {
    return HistoryModel(
      listviewItemList: listviewItemList ?? this.listviewItemList,
    );
  }

  @override
  List<Object?> get props => [listviewItemList];
}
