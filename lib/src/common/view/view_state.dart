import 'package:freezed_annotation/freezed_annotation.dart';
part 'view_state.freezed.dart';

@freezed
sealed class ViewState<T> with _$ViewState<T> {
  const factory ViewState.initial() = Initial<T>;
  const factory ViewState.loading() = Loading<T>;
  const factory ViewState.refreshing(T value) = Refreshing<T>;
  const factory ViewState.empty() = Empty<T>;
  const factory ViewState.data(T value) = Data<T>;
  const factory ViewState.failure(Object error) = Failure<T>;
}
