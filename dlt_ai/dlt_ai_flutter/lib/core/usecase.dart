abstract interface class UserCae<T, Params> {
  Future<T> call(Params params);
}

class NoParams {}
