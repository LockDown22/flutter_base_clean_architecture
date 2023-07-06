import 'package:flutter_clean_architecture/data/dto/mock_dto.dart';

abstract class MockRepository {
  Future<List<MockDto>> getListMockData();
}
