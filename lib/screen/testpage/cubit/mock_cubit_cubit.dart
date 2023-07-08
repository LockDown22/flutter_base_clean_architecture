import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/dto/mock_dto.dart';
import 'package:flutter_clean_architecture/data/repository/mock_repository.dart';
import 'package:flutter_clean_architecture/di/di.dart';
import 'package:flutter_clean_architecture/services/local_storage_service/shared_preference_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_cubit_state.dart';
part 'mock_cubit_cubit.freezed.dart';

class MockCubitCubit extends Cubit<MockCubitState> {
  MockCubitCubit() : super(MockCubitState.initial());

  final repository = getIt<MockRepository>();
  final sharedPre = getIt<SharedPreferenceService>();
  Future<void> getMockApi() async {
    await sharedPre.setToken('hahahahahahah');

    final result = await repository.getListMockData();
    if (result.isNotEmpty) {
      emit(state.copyWith(data: result));
    }
  }
}
