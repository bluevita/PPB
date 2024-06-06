part of 'tampilan_awal_bloc.dart';

/// Represents the state of TampilanAwal in the application.
// ignore_for_file: must_be_immutable
class TampilanAwalState extends Equatable {
  TampilanAwalState({this.tampilanAwalModelObj});

  final TampilanAwalModel? tampilanAwalModelObj;

  @override
  List<Object?> get props => [tampilanAwalModelObj];

  TampilanAwalState copyWith({TampilanAwalModel? tampilanAwalModelObj}) {
    return TampilanAwalState(
      tampilanAwalModelObj: tampilanAwalModelObj ?? this.tampilanAwalModelObj,
    );
  }
}
