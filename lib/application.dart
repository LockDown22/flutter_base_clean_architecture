import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'navigator/app_route.dart';
import 'themes/app_themes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool _isDarkmode;
  final _appRouter = AppRouter();
  @override
  void initState() {
    _isDarkmode = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: AppLocaleUtils.supportedLocales,
      themeMode: !_isDarkmode ? ThemeMode.light : ThemeMode.light,
      locale: TranslationProvider.of(context).flutterLocale,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: _appRouter.config(),
      title: 'BoilerPlate',
      debugShowCheckedModeBanner: false,
    );
  }
}
