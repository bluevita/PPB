part of 'kategori_family_bloc.dart';

/// Represents the state of Kategori Family in the application.
// ignore_for_file: must_be_immutable
class KategoriFamilyState extends Equatable {
  KategoriFamilyState({this.kategoriFamilyModelObj});

  final KategoriFamilyModel? kategoriFamilyModelObj;

  @override
  List<Object?> get props => [kategoriFamilyModelObj];

  KategoriFamilyState copyWith({KategoriFamilyModel? kategoriFamilyModelObj}) {
    return KategoriFamilyState(
      kategoriFamilyModelObj:
          kategoriFamilyModelObj ?? this.kategoriFamilyModelObj,
    );
  }
}
