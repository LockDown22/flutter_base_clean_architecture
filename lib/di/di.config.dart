// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/http_client.dart' as _i6;
import '../navigator/app_route.dart' as _i3;
import '../services/local_storage_service/shared_preference_service.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final httpClient = _$HttpClient();
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.singleton<_i4.Dio>(
      httpClient.baseApi(),
      instanceName: 'baseApi',
    );
    gh.singleton<_i5.SharedPreferenceService>(_i5.SharedPreferenceService());
    return this;
  }
}

class _$HttpClient extends _i6.HttpClient {}
