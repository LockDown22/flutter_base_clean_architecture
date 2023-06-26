import 'dart:async';

import 'package:flutter_clean_architecture/services/local_storage_service/local_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SharedPreferenceService implements LocalService {
  @override
  String accessTokenKey = 'tokenKey';
  @override
  String localeKey = 'localeKey';
  @override
  String isDarkModeKey = 'isDarkModeKey';
  @override
  String isFirstUseKey = 'isFirstUseKey';

  late final SharedPreferences _pref;

  @override
  getValue({required String key}) {
    return _pref.get(key);
  }

  @override
  Future<bool> setIsDarkMode(bool isDarkMode) {
    throw UnimplementedError();
  }

  @override
  Future<bool> setIsFirstUse(bool isFirstUse) {
    throw UnimplementedError();
  }

  @override
  Future<bool> setLocale(String locale) {
    throw UnimplementedError();
  }

  @override
  Future<bool> setToken(String token) async =>
      await _pref.setString(accessTokenKey, token);

  @override
  void setValue({required String key, required value}) {}

  @override
  String? get token => _pref.getString(accessTokenKey);

  @override
  bool get isDarkMode => _pref.getBool(isDarkModeKey) ?? false;

  @override
  bool get isFirstUse => throw UnimplementedError();

  @override
  String get locale => throw UnimplementedError();
}
