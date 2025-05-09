// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailsEvents<I> {
  I get id;

  /// Create a copy of DetailsEvents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailsEventsCopyWith<I, DetailsEvents<I>> get copyWith =>
      _$DetailsEventsCopyWithImpl<I, DetailsEvents<I>>(
          this as DetailsEvents<I>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailsEvents<I> &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @override
  String toString() {
    return 'DetailsEvents<$I>(id: $id)';
  }
}

/// @nodoc
abstract mixin class $DetailsEventsCopyWith<I, $Res> {
  factory $DetailsEventsCopyWith(
          DetailsEvents<I> value, $Res Function(DetailsEvents<I>) _then) =
      _$DetailsEventsCopyWithImpl;
  @useResult
  $Res call({I id});
}

/// @nodoc
class _$DetailsEventsCopyWithImpl<I, $Res>
    implements $DetailsEventsCopyWith<I, $Res> {
  _$DetailsEventsCopyWithImpl(this._self, this._then);

  final DetailsEvents<I> _self;
  final $Res Function(DetailsEvents<I>) _then;

  /// Create a copy of DetailsEvents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as I,
    ));
  }
}

/// @nodoc

class LoadDetails<I> implements DetailsEvents<I> {
  const LoadDetails(this.id);

  @override
  final I id;

  /// Create a copy of DetailsEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadDetailsCopyWith<I, LoadDetails<I>> get copyWith =>
      _$LoadDetailsCopyWithImpl<I, LoadDetails<I>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadDetails<I> &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @override
  String toString() {
    return 'DetailsEvents<$I>.loadDetails(id: $id)';
  }
}

/// @nodoc
abstract mixin class $LoadDetailsCopyWith<I, $Res>
    implements $DetailsEventsCopyWith<I, $Res> {
  factory $LoadDetailsCopyWith(
          LoadDetails<I> value, $Res Function(LoadDetails<I>) _then) =
      _$LoadDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({I id});
}

/// @nodoc
class _$LoadDetailsCopyWithImpl<I, $Res>
    implements $LoadDetailsCopyWith<I, $Res> {
  _$LoadDetailsCopyWithImpl(this._self, this._then);

  final LoadDetails<I> _self;
  final $Res Function(LoadDetails<I>) _then;

  /// Create a copy of DetailsEvents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
  }) {
    return _then(LoadDetails<I>(
      freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as I,
    ));
  }
}

// dart format on
