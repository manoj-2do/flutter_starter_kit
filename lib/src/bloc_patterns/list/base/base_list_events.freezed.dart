// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseListEvents<F> {
  F? get filter;

  /// Create a copy of BaseListEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseListEventsCopyWith<F, BaseListEvents<F>> get copyWith =>
      _$BaseListEventsCopyWithImpl<F, BaseListEvents<F>>(
          this as BaseListEvents<F>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseListEvents<F> &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @override
  String toString() {
    return 'BaseListEvents<$F>(filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $BaseListEventsCopyWith<F, $Res> {
  factory $BaseListEventsCopyWith(
          BaseListEvents<F> value, $Res Function(BaseListEvents<F>) _then) =
      _$BaseListEventsCopyWithImpl;
  @useResult
  $Res call({F? filter});
}

/// @nodoc
class _$BaseListEventsCopyWithImpl<F, $Res>
    implements $BaseListEventsCopyWith<F, $Res> {
  _$BaseListEventsCopyWithImpl(this._self, this._then);

  final BaseListEvents<F> _self;
  final $Res Function(BaseListEvents<F>) _then;

  /// Create a copy of BaseListEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_self.copyWith(
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class LoadList<F> implements BaseListEvents<F> {
  const LoadList([this.filter]);

  @override
  final F? filter;

  /// Create a copy of BaseListEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadListCopyWith<F, LoadList<F>> get copyWith =>
      _$LoadListCopyWithImpl<F, LoadList<F>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadList<F> &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @override
  String toString() {
    return 'BaseListEvents<$F>.loadList(filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $LoadListCopyWith<F, $Res>
    implements $BaseListEventsCopyWith<F, $Res> {
  factory $LoadListCopyWith(
          LoadList<F> value, $Res Function(LoadList<F>) _then) =
      _$LoadListCopyWithImpl;
  @override
  @useResult
  $Res call({F? filter});
}

/// @nodoc
class _$LoadListCopyWithImpl<F, $Res> implements $LoadListCopyWith<F, $Res> {
  _$LoadListCopyWithImpl(this._self, this._then);

  final LoadList<F> _self;
  final $Res Function(LoadList<F>) _then;

  /// Create a copy of BaseListEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(LoadList<F>(
      freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class RefreshList<F> implements BaseListEvents<F> {
  const RefreshList([this.filter]);

  @override
  final F? filter;

  /// Create a copy of BaseListEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshListCopyWith<F, RefreshList<F>> get copyWith =>
      _$RefreshListCopyWithImpl<F, RefreshList<F>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshList<F> &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @override
  String toString() {
    return 'BaseListEvents<$F>.refreshList(filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $RefreshListCopyWith<F, $Res>
    implements $BaseListEventsCopyWith<F, $Res> {
  factory $RefreshListCopyWith(
          RefreshList<F> value, $Res Function(RefreshList<F>) _then) =
      _$RefreshListCopyWithImpl;
  @override
  @useResult
  $Res call({F? filter});
}

/// @nodoc
class _$RefreshListCopyWithImpl<F, $Res>
    implements $RefreshListCopyWith<F, $Res> {
  _$RefreshListCopyWithImpl(this._self, this._then);

  final RefreshList<F> _self;
  final $Res Function(RefreshList<F>) _then;

  /// Create a copy of BaseListEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(RefreshList<F>(
      freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

// dart format on
