import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/strings.g.dart';
import 'package:flutter_clean_architecture/services/local_storage_service/shared_preference_service.dart';
import 'configs/app_config.dart';
import 'di/di.dart' as di;
import 'application.dart';
import 'dart:async';

Future<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();
    AppConfig.configDev();
    await di.registerService();
    await di.configureInjection();
    runApp(TranslationProvider(child: const MyApp()));
  }, (error, stack) {});
}
