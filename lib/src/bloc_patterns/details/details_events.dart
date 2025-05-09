import 'package:freezed_annotation/freezed_annotation.dart';
part 'details_events.freezed.dart';

@freezed
sealed class DetailsEvents<I> with _$DetailsEvents<I> {
  const factory DetailsEvents.loadDetails(I id) = LoadDetails<I>;
}
