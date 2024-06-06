// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/app_export.dart';
import '../models/app_navigation_model.dart';
import 'app_navigation_event.dart';
import 'app_navigation_state.dart';

/// A bloc that manages the state of a AppNavigation according to the event that is dispatched to it.
class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc(AppNavigationState initialState) : super(initialState);

  @override
  // ignore: override_on_non_overriding_member
  Stream<AppNavigationState> mapEventToState(AppNavigationEvent event) async* {
    if (event is AppNavigationInitialEvent) {
      yield* _mapInitializeToState();
    }
  }

  Stream<AppNavigationState> _mapInitializeToState() async* {
    // Logic for initializing the app navigation state can go here
    yield AppNavigationState(appNavigationModelObj: AppNavigationModel());
  }
}
