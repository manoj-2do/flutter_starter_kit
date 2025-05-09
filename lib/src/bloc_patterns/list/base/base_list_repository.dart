abstract interface class BaseListRepository<T> {
  Future<List<T>> getAll();
}
