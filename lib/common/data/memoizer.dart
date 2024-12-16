mixin Memoizer<K extends Object> {
  final _cache = <K, Object>{};

  T memoize<T extends Object>(K key, T value) {
    if (_cache.containsKey(key)) return _cache[key] as T;

    _cache[key] = value;
    return value;
  }
}
