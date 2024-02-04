abstract class BookmarkedSectionsStorage {
  Future<void> store({required String section});

  Future<void> remove({required String section});

  Future<Iterable<String>> load();

  Future<void> init();

  Future<void> close();
}