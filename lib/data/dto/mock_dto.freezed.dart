// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mock_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MockDto _$MockDtoFromJson(Map<String, dynamic> json) {
  return _MockDto.fromJson(json);
}

/// @nodoc
mixin _$MockDto {
  String? get user => throw _privateConstructorUsedError;
  int? get phone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MockDtoCopyWith<MockDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockDtoCopyWith<$Res> {
  factory $MockDtoCopyWith(MockDto value, $Res Function(MockDto) then) =
      _$MockDtoCopyWithImpl<$Res, MockDto>;
  @useResult
  $Res call({String? user, int? phone, String? message, int? id});
}

/// @nodoc
class _$MockDtoCopyWithImpl<$Res, $Val extends MockDto>
    implements $MockDtoCopyWith<$Res> {
  _$MockDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? phone = freezed,
    Object? message = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MockDtoCopyWith<$Res> implements $MockDtoCopyWith<$Res> {
  factory _$$_MockDtoCopyWith(
          _$_MockDto value, $Res Function(_$_MockDto) then) =
      __$$_MockDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? user, int? phone, String? message, int? id});
}

/// @nodoc
class __$$_MockDtoCopyWithImpl<$Res>
    extends _$MockDtoCopyWithImpl<$Res, _$_MockDto>
    implements _$$_MockDtoCopyWith<$Res> {
  __$$_MockDtoCopyWithImpl(_$_MockDto _value, $Res Function(_$_MockDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? phone = freezed,
    Object? message = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_MockDto(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MockDto implements _MockDto {
  _$_MockDto({this.user, this.phone, this.message, this.id});

  factory _$_MockDto.fromJson(Map<String, dynamic> json) =>
      _$$_MockDtoFromJson(json);

  @override
  final String? user;
  @override
  final int? phone;
  @override
  final String? message;
  @override
  final int? id;

  @override
  String toString() {
    return 'MockDto(user: $user, phone: $phone, message: $message, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MockDto &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, phone, message, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MockDtoCopyWith<_$_MockDto> get copyWith =>
      __$$_MockDtoCopyWithImpl<_$_MockDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MockDtoToJson(
      this,
    );
  }
}

abstract class _MockDto implements MockDto {
  factory _MockDto(
      {final String? user,
      final int? phone,
      final String? message,
      final int? id}) = _$_MockDto;

  factory _MockDto.fromJson(Map<String, dynamic> json) = _$_MockDto.fromJson;

  @override
  String? get user;
  @override
  int? get phone;
  @override
  String? get message;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MockDtoCopyWith<_$_MockDto> get copyWith =>
      throw _privateConstructorUsedError;
}
