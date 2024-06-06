// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app_export.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    init();
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreferences Initialized');
  }

  /// Clear all the data stored in preferences
  void clearPreferencesData() {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) async {
    await _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData') ?? 'primary';
    } catch (e) {
      return 'primary';
    }
  }
}
