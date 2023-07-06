// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mock_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MockCubitState {
  List<MockDto> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MockCubitStateCopyWith<MockCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockCubitStateCopyWith<$Res> {
  factory $MockCubitStateCopyWith(
          MockCubitState value, $Res Function(MockCubitState) then) =
      _$MockCubitStateCopyWithImpl<$Res, MockCubitState>;
  @useResult
  $Res call({List<MockDto> data});
}

/// @nodoc
class _$MockCubitStateCopyWithImpl<$Res, $Val extends MockCubitState>
    implements $MockCubitStateCopyWith<$Res> {
  _$MockCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MockDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MockCubitStateCopyWith<$Res>
    implements $MockCubitStateCopyWith<$Res> {
  factory _$$_MockCubitStateCopyWith(
          _$_MockCubitState value, $Res Function(_$_MockCubitState) then) =
      __$$_MockCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MockDto> data});
}

/// @nodoc
class __$$_MockCubitStateCopyWithImpl<$Res>
    extends _$MockCubitStateCopyWithImpl<$Res, _$_MockCubitState>
    implements _$$_MockCubitStateCopyWith<$Res> {
  __$$_MockCubitStateCopyWithImpl(
      _$_MockCubitState _value, $Res Function(_$_MockCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_MockCubitState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MockDto>,
    ));
  }
}

/// @nodoc

class _$_MockCubitState implements _MockCubitState {
  const _$_MockCubitState({required final List<MockDto> data}) : _data = data;

  final List<MockDto> _data;
  @override
  List<MockDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MockCubitState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MockCubitState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MockCubitStateCopyWith<_$_MockCubitState> get copyWith =>
      __$$_MockCubitStateCopyWithImpl<_$_MockCubitState>(this, _$identity);
}

abstract class _MockCubitState implements MockCubitState {
  const factory _MockCubitState({required final List<MockDto> data}) =
      _$_MockCubitState;

  @override
  List<MockDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$_MockCubitStateCopyWith<_$_MockCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
