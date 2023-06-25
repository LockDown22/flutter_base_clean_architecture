import 'package:flutter_clean_architecture/services/local_storage_service/shared_preference_service.dart';

import '../services/local_storage_service/local_service.dart';
import 'injector.dart';

class ServiceConfig {
  ServiceConfig._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<LocalService>(
      SharedPreferenceService(),
      signalsReady: true,
    );
  }
}
