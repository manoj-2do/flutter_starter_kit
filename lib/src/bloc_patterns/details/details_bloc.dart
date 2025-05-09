import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/details/details_events.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/details/details_repository.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/view/view_state.dart';

class DetailsBloc<T, I> extends Bloc<DetailsEvents, ViewState<T>> {
  final DetailsRepository<T, I> _repository;

  DetailsBloc(DetailsRepository<T, I> repository)
      : _repository = repository,
        super(Initial<T>()) {
    on<LoadDetails<I>>(_loadItemWithId);
  }

  Future<void> _loadItemWithId(
      LoadDetails<I> event, Emitter<ViewState> emit) async {
    try {
      emit(Loading<T>());
      final item = await _repository.getById(event.id);
      emit(item != null ? Data<T>(item) : Empty<T>());
    } catch (e) {
      emit(Failure<T>(e));
    }
  }
}
