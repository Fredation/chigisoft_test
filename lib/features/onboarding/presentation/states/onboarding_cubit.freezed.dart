// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingCubitState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingCubitStateCopyWith<OnboardingCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingCubitStateCopyWith<$Res> {
  factory $OnboardingCubitStateCopyWith(OnboardingCubitState value,
          $Res Function(OnboardingCubitState) then) =
      _$OnboardingCubitStateCopyWithImpl<$Res, OnboardingCubitState>;
  @useResult
  $Res call({bool isLoading, Failure? error, User? user, dynamic data});
}

/// @nodoc
class _$OnboardingCubitStateCopyWithImpl<$Res,
        $Val extends OnboardingCubitState>
    implements $OnboardingCubitStateCopyWith<$Res> {
  _$OnboardingCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? user = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingCubitStateCopyWith<$Res>
    implements $OnboardingCubitStateCopyWith<$Res> {
  factory _$$_OnboardingCubitStateCopyWith(_$_OnboardingCubitState value,
          $Res Function(_$_OnboardingCubitState) then) =
      __$$_OnboardingCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Failure? error, User? user, dynamic data});
}

/// @nodoc
class __$$_OnboardingCubitStateCopyWithImpl<$Res>
    extends _$OnboardingCubitStateCopyWithImpl<$Res, _$_OnboardingCubitState>
    implements _$$_OnboardingCubitStateCopyWith<$Res> {
  __$$_OnboardingCubitStateCopyWithImpl(_$_OnboardingCubitState _value,
      $Res Function(_$_OnboardingCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? user = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_OnboardingCubitState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnboardingCubitState implements _OnboardingCubitState {
  const _$_OnboardingCubitState(
      {this.isLoading = false, this.error, this.user, this.data});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? error;
  @override
  final User? user;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'OnboardingCubitState(isLoading: $isLoading, error: $error, user: $user, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingCubitState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, user,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingCubitStateCopyWith<_$_OnboardingCubitState> get copyWith =>
      __$$_OnboardingCubitStateCopyWithImpl<_$_OnboardingCubitState>(
          this, _$identity);
}

abstract class _OnboardingCubitState implements OnboardingCubitState {
  const factory _OnboardingCubitState(
      {final bool isLoading,
      final Failure? error,
      final User? user,
      final dynamic data}) = _$_OnboardingCubitState;

  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  User? get user;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingCubitStateCopyWith<_$_OnboardingCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
