sealed class Maybe<T> {}

/// Represents a successful result with a value of type T.
class Success<T> implements Maybe<T> {
  const Success(this.value);

  final T value;
}

/// Represents a failed result with an error message.
class Failure<T> implements Maybe<T> {
  const Failure(this.error);

  final String error;
}
