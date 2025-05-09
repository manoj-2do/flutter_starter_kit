import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_list_events.freezed.dart';

@freezed
sealed class BaseListEvents<F> with _$BaseListEvents<F> {
  const factory BaseListEvents.loadList([F? filter]) = LoadList<F>;
  const factory BaseListEvents.refreshList([F? filter]) = RefreshList<F>;
}
