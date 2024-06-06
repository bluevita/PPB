part of 'kategori_romance_bloc.dart';

/// Represents the state of KategoriRomance in the application.
class KategoriRomanceState extends Equatable {
  final KategoriRomanceModel? kategoriRomanceModelObj;

  KategoriRomanceState({this.kategoriRomanceModelObj});

  @override
  List<Object?> get props => [kategoriRomanceModelObj];

  KategoriRomanceState copyWith(
      {KategoriRomanceModel? kategoriRomanceModelObj}) {
    return KategoriRomanceState(
      kategoriRomanceModelObj:
          kategoriRomanceModelObj ?? this.kategoriRomanceModelObj,
    );
  }
}
