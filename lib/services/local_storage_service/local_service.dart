import 'dart:async';

abstract class LocalService {
  String accessTokenKey = '';
  String localeKey = '';
  String isDarkModeKey = '';
  String isFirstUseKey = '';

  String? get token;
  String get locale;
  bool get isDarkMode;

  bool get isFirstUse;
  Future<bool> setToken(String token);
  Future<bool> setLocale(String locale);
  Future<bool> setIsDarkMode(bool isDarkMode);
  Future<bool> setIsFirstUse(bool isFirstUse);

  void setValue({required String key, required dynamic value});
  dynamic getValue({required String key});
}
