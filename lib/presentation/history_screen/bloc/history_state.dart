part of 'history_bloc.dart';

/// Represents the state of History in the application.
// ignore_for_file: must_be_immutable
class HistoryState extends Equatable {
  final HistoryModel? historyModelObj;

  const HistoryState({this.historyModelObj});

  @override
  List<Object?> get props => [historyModelObj];

  HistoryState copyWith({HistoryModel? historyModelObj}) {
    return HistoryState(
      historyModelObj: historyModelObj ?? this.historyModelObj,
    );
  }
}
