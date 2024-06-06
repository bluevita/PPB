part of 'kategori_action_bloc.dart';

/// Represents the state of KategoriAction in the application.
// ignore_for_file: must_be_immutable
class KategoriActionState extends Equatable {
  KategoriActionState({this.kategoriActionModelObj});

  final KategoriActionModel? kategoriActionModelObj;

  @override
  List<Object?> get props => [kategoriActionModelObj];

  KategoriActionState copyWith({KategoriActionModel? kategoriActionModelObj}) {
    return KategoriActionState(
      kategoriActionModelObj:
          kategoriActionModelObj ?? this.kategoriActionModelObj,
    );
  }
}
