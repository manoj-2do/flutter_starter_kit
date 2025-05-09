import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/src/common/view/view_state.dart';

typedef InitialBuilder = Widget Function(BuildContext context);
typedef LoadingBuilder = Widget Function(BuildContext context);
typedef RefreshingBuilder<T> = Widget Function(BuildContext context, T value);
typedef DataBuilder<T> = Widget Function(BuildContext context, T value);
typedef EmptyBuilder = Widget Function(BuildContext context);
typedef FailureBuilder = Widget Function(BuildContext context, Object error);

class ViewStateBuilder<T, B extends BlocBase<ViewState<T>>>
    extends BlocBuilder<B, ViewState<T>> {
  ViewStateBuilder({
    super.key,
    super.bloc,
    InitialBuilder? initial,
    LoadingBuilder? loading,
    RefreshingBuilder? refreshing,
    DataBuilder? data,
    EmptyBuilder? empty,
    FailureBuilder? failure,
  }) : super(builder: (BuildContext context, ViewState<T> state) {
          const none = SizedBox.shrink();
          return switch (state) {
            Initial<T>() => initial?.call(context) ?? none,
            Loading<T>() => loading?.call(context) ?? none,
            Refreshing<T>(value: final value) =>
              refreshing?.call(context, value) ?? none,
            Data<T>(value: final value) => data?.call(context, value) ?? none,
            Empty<T>() => empty?.call(context) ?? none,
            Failure(error: Object error) =>
              failure?.call(context, error) ?? none,
          };
        });
}
