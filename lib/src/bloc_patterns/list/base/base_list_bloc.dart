import 'package:flutter_starter_kit/src/bloc_patterns/list/base/base_list_repository.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/list/filter/filter_list_bloc.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/list/filter/filter_list_repository.dart';

class BaseListBloc<T> extends FilterListBloc<T, void> {
  BaseListBloc(BaseListRepository<T> repository)
      : super(_FilterRepositoryAdapter(repository));
}

class _FilterRepositoryAdapter<T> implements FilterListRepository<T, void> {
  final BaseListRepository<T> listRepository;

  _FilterRepositoryAdapter(this.listRepository);

  @override
  Future<List<T>> getAll() => listRepository.getAll();

  @override
  Future<List<T>> getBy(void filter) => listRepository.getAll();
}
