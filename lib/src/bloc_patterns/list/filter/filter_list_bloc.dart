import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/list/base/base_list_events.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/list/filter/filter_list_repository.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/view/view_state.dart';

class FilterListBloc<T, F> extends Bloc<BaseListEvents<F>, ViewState<List<T>>> {
  final FilterListRepository<T, F> _repository;
  F? _filter;
  F? get filter => _filter;

  FilterListBloc(FilterListRepository<T, F> repository)
      : _repository = repository,
        super(Initial<List<T>>()) {
    on<LoadList<F>>(_loadList);
    on<RefreshList<F>>(_refreshList);
  }

  void refreshItems({F? filter}) => add(RefreshList(filter));

  Future<void> _loadList(
    LoadList<F> event,
    Emitter<ViewState<List<T>>> emit,
  ) async {
    emit(Loading<List<T>>());
    await _loadItems(event, emit);
  }

  Future<void> _refreshList(
      RefreshList<F> event, Emitter<ViewState> emit) async {
    if (state.canRefresh) {
      emit(Refreshing<List<T>>(state.currentItems));
      await _loadItems(event, emit);
    }
  }

  Future<void> _loadItems(
      BaseListEvents<F> event, Emitter<ViewState> emit) async {
    try {
      final items = await _getItems(filter);
      if (items.isNotEmpty) {
        emit(Data<List<T>>(UnmodifiableListView(items)));
      } else {
        emit(Empty<List<T>>());
      }
    } catch (e) {
      emit(Failure<List<T>>(e));
    } finally {
      _filter = event.filter;
    }
  }

  Future<List<T>> _getItems(F? filter) {
    if (filter != null) {
      return _repository.getBy(filter);
    } else {
      return _repository.getAll();
    }
  }
}

extension<T> on ViewState<List<T>> {
  List<T> get currentItems => switch (this) {
        Data<List<T>>(value: final items) => items,
        Refreshing<List<T>>(value: final items) => items,
        _ => <T>[] //Return empty list for all other states
      };

  bool get canRefresh => switch (this) {
        Data<List<T>>() => true,
        Empty<List<T>>() => true,
        _ => false,
      };
}
