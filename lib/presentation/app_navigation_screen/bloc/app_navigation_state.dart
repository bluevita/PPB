import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';
import '../models/app_navigation_model.dart';

/// Represents the state of AppNavigation in the application.
// ignore_for_file: must_be_immutable
class AppNavigationState extends Equatable {
  const AppNavigationState({this.appNavigationModelObj});

  final AppNavigationModel? appNavigationModelObj;

  @override
  List<Object?> get props => [appNavigationModelObj];

  AppNavigationState copyWith({AppNavigationModel? appNavigationModelObj}) {
    return AppNavigationState(
      appNavigationModelObj:
          appNavigationModelObj ?? this.appNavigationModelObj,
    );
  }
}
