import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/strings.g.dart';

import 'application.dart';
import 'dart:async';

Future<void> main() async {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();
    runApp(TranslationProvider(child: const MyApp()));
  }, (error, stack) {});
}
