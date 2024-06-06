part of 'kategori_horror_bloc.dart';

class KategoriHorrorState extends Equatable {
  final KategoriHorrorModel? kategoriHorrorModelObj;

  KategoriHorrorState({this.kategoriHorrorModelObj});

  @override
  List<Object?> get props => [kategoriHorrorModelObj];

  KategoriHorrorState copyWith({KategoriHorrorModel? kategoriHorrorModelObj}) {
    return KategoriHorrorState(
      kategoriHorrorModelObj:
          kategoriHorrorModelObj ?? this.kategoriHorrorModelObj,
    );
  }
}
