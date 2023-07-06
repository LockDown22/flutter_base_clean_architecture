import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/data/dto/mock_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'mock_api.g.dart';

@singleton
@RestApi()
abstract class MockApi {
  @factoryMethod
  factory MockApi(@Named('baseApi') Dio dio) = _MockApi;

  @GET("/mockdata")
  Future<List<MockDto>> getTasks();
}
