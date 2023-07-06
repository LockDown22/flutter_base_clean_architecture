part of 'mock_cubit_cubit.dart';

@freezed
class MockCubitState with _$MockCubitState {
  const factory MockCubitState({
    required List<MockDto> data,
  }) = _MockCubitState;

  factory MockCubitState.initial() => const MockCubitState(data: []);
}
