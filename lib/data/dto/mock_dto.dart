import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_dto.freezed.dart';
part 'mock_dto.g.dart';

@freezed
class MockDto with _$MockDto {
  factory MockDto({
    String? user,
    int? phone,
    String? message,
    int? id,
  }) = _MockDto;

  factory MockDto.fromJson(Map<String, Object?> json) =>
      _$MockDtoFromJson(json);
}
