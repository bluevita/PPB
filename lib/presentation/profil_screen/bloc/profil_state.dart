part of 'profil_bloc.dart';

/// Represents the state of Profil in the application.
class ProfilState extends Equatable {
  final ProfilModel? profilModelObj;

  ProfilState({this.profilModelObj});

  @override
  List<Object?> get props => [profilModelObj];

  ProfilState copyWith({ProfilModel? profilModelObj}) {
    return ProfilState(
      profilModelObj: profilModelObj ?? this.profilModelObj,
    );
  }
}
