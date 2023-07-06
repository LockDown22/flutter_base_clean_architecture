import 'package:flutter_clean_architecture/services/local_storage_service/shared_preference_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureInjection() async {
  getIt.init();
}

Future<void> registerService() async {
  getIt.registerSingleton<SharedPreferenceService>(SharedPreferenceService());
}
