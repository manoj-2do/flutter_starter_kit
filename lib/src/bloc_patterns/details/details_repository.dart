abstract interface class DetailsRepository<T, I> {
  Future<T?> getById(I? id);
}
