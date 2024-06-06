// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../core/app_export.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  @override
  // ignore: override_on_non_overriding_member
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeChangeEvent) {
      yield _changeTheme(event);
    }
  }

  ThemeState _changeTheme(ThemeChangeEvent event) {
    return state.copyWith(themeType: event.themeType);
  }
}
