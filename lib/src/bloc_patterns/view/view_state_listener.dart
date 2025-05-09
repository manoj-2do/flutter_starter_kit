import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/view/view_state.dart';

typedef LoadingCallback = void Function(BuildContext context);
typedef DataCallback<T> = void Function(BuildContext context, T value);
typedef RefreshingCallback<T> = void Function(BuildContext context, T value);
typedef EmptyCallback = void Function(BuildContext context);
typedef FailureCallback = void Function(BuildContext context, Object error);

//T -> State | B -> BLoC
class ViewStateListener<T, B extends BlocBase<ViewState<T>>>
    extends BlocListener<B, ViewState<T>> {
  ViewStateListener({
    super.key,
    super.bloc,
    super.listenWhen,
    super.child,
    LoadingCallback? onLoading,
    RefreshingCallback<T>? onRefresh,
    DataCallback<T>? onData,
    EmptyCallback? onEmpty,
    FailureCallback? onFailure,
  }) : super(
            listener: (BuildContext context, ViewState<T> state) =>
                switch (state) {
                  Initial<T>() => () {},
                  Loading<T>() => onLoading?.call(context),
                  Refreshing<T>(value: final value) =>
                    onRefresh?.call(context, value),
                  Empty<T>() => onEmpty?.call(context),
                  Data<T>(value: final value) => onData?.call(context, value),
                  Failure<T>(error: Object error) =>
                    onFailure?.call(context, error),
                });
}
