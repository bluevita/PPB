part of 'tiket_bloc.dart';

class TiketState extends Equatable {
  final TiketModel? tiketModelObj;

  const TiketState({this.tiketModelObj});

  @override
  List<Object?> get props => [tiketModelObj];

  TiketState copyWith({TiketModel? tiketModelObj}) {
    return TiketState(
      tiketModelObj: tiketModelObj ?? this.tiketModelObj,
    );
  }
}
