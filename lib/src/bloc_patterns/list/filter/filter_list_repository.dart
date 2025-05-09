import 'package:flutter_starter_kit/src/bloc_patterns/list/base/base_list_repository.dart';

abstract interface class FilterListRepository<T, F>
    implements BaseListRepository<T> {
  Future<List<T>> getBy(F filter);
}
