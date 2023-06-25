import 'package:flutter_clean_architecture/injector/dio_config.dart';
import 'package:flutter_clean_architecture/injector/service_config.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static GetIt instance = GetIt.instance;
  Injector._();

  static void init() {
    DioConfig.setUp();
    ServiceConfig.init();
  }
}
