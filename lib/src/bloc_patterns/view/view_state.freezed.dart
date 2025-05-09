// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ViewState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState<$T>()';
  }
}

/// @nodoc
class $ViewStateCopyWith<T, $Res> {
  $ViewStateCopyWith(ViewState<T> _, $Res Function(ViewState<T>) __);
}

/// @nodoc

class Initial<T> implements ViewState<T> {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState<$T>.initial()';
  }
}

/// @nodoc

class Loading<T> implements ViewState<T> {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }
}

/// @nodoc

class Refreshing<T> implements ViewState<T> {
  const Refreshing(this.value);

  final T value;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshingCopyWith<T, Refreshing<T>> get copyWith =>
      _$RefreshingCopyWithImpl<T, Refreshing<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Refreshing<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ViewState<$T>.refreshing(value: $value)';
  }
}

/// @nodoc
abstract mixin class $RefreshingCopyWith<T, $Res>
    implements $ViewStateCopyWith<T, $Res> {
  factory $RefreshingCopyWith(
          Refreshing<T> value, $Res Function(Refreshing<T>) _then) =
      _$RefreshingCopyWithImpl;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$RefreshingCopyWithImpl<T, $Res>
    implements $RefreshingCopyWith<T, $Res> {
  _$RefreshingCopyWithImpl(this._self, this._then);

  final Refreshing<T> _self;
  final $Res Function(Refreshing<T>) _then;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Refreshing<T>(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class Empty<T> implements ViewState<T> {
  const Empty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState<$T>.empty()';
  }
}

/// @nodoc

class Data<T> implements ViewState<T> {
  const Data(this.value);

  final T value;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<T, Data<T>> get copyWith =>
      _$DataCopyWithImpl<T, Data<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ViewState<$T>.data(value: $value)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<T, $Res>
    implements $ViewStateCopyWith<T, $Res> {
  factory $DataCopyWith(Data<T> value, $Res Function(Data<T>) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$DataCopyWithImpl<T, $Res> implements $DataCopyWith<T, $Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data<T> _self;
  final $Res Function(Data<T>) _then;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Data<T>(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class Failure<T> implements ViewState<T> {
  const Failure(this.error);

  final Object error;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'ViewState<$T>.failure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<T, $Res>
    implements $ViewStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(Failure<T>(
      null == error ? _self.error : error,
    ));
  }
}

// dart format on
