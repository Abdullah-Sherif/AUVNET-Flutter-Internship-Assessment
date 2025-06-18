sealed class Maybe<T> {}

/// Represents a successful result with a value of type T.
class Success<T> extends Maybe<T> {
  Success(this.value);

  final T value;
}

/// Represents a failed result with an error message.
class Failure<T> extends Maybe<T> {
  Failure(this.error);

  final String error;
}
