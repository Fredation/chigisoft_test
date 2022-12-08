// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardCubitState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardCubitStateCopyWith<DashboardCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardCubitStateCopyWith<$Res> {
  factory $DashboardCubitStateCopyWith(
          DashboardCubitState value, $Res Function(DashboardCubitState) then) =
      _$DashboardCubitStateCopyWithImpl<$Res, DashboardCubitState>;
  @useResult
  $Res call({bool isLoading, Failure? error, dynamic data});
}

/// @nodoc
class _$DashboardCubitStateCopyWithImpl<$Res, $Val extends DashboardCubitState>
    implements $DashboardCubitStateCopyWith<$Res> {
  _$DashboardCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardCubitStateCopyWith<$Res>
    implements $DashboardCubitStateCopyWith<$Res> {
  factory _$$_DashboardCubitStateCopyWith(_$_DashboardCubitState value,
          $Res Function(_$_DashboardCubitState) then) =
      __$$_DashboardCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? error, dynamic data});
}

/// @nodoc
class __$$_DashboardCubitStateCopyWithImpl<$Res>
    extends _$DashboardCubitStateCopyWithImpl<$Res, _$_DashboardCubitState>
    implements _$$_DashboardCubitStateCopyWith<$Res> {
  __$$_DashboardCubitStateCopyWithImpl(_$_DashboardCubitState _value,
      $Res Function(_$_DashboardCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DashboardCubitState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_DashboardCubitState implements _DashboardCubitState {
  const _$_DashboardCubitState({this.isLoading = false, this.error, this.data});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? error;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'DashboardCubitState(isLoading: $isLoading, error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardCubitState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, error, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardCubitStateCopyWith<_$_DashboardCubitState> get copyWith =>
      __$$_DashboardCubitStateCopyWithImpl<_$_DashboardCubitState>(
          this, _$identity);
}

abstract class _DashboardCubitState implements DashboardCubitState {
  const factory _DashboardCubitState(
      {final bool isLoading,
      final Failure? error,
      final dynamic data}) = _$_DashboardCubitState;

  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardCubitStateCopyWith<_$_DashboardCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
