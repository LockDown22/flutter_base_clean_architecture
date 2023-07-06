import 'package:flutter_clean_architecture/data/data_source/remote/api/mock_api.dart';
import 'package:flutter_clean_architecture/data/dto/mock_dto.dart';
import 'package:flutter_clean_architecture/data/repository/mock_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MockRepository)
class MockRepositoryImpl implements MockRepository {
  MockRepositoryImpl(this._api);

  final MockApi _api;

  @override
  Future<List<MockDto>> getListMockData() async {
    final result = await _api.getTasks();
    return result;
  }
}
