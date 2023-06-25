import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'navigator/app_route.dart';
import 'themes/app_themes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final FlutterI18nDelegate appLocalizationDelegate;
  late bool _isDarkmode;
  final _appRouter = AppRouter();
  @override
  void initState() {
    _isDarkmode = false;
    appLocalizationDelegate = FlutterI18nDelegate();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: [
        appLocalizationDelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        appLocalizationDelegate.currentLocale ?? const Locale('vi', 'VN')
      ],
      themeMode: !_isDarkmode ? ThemeMode.light : ThemeMode.light,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: _appRouter.config(),
      title: 'BoilerPlate',
      debugShowCheckedModeBanner: false,
    );
  }
}
