import '../errors/failures.dart';

sealed class Result<T> {
  const Result();
}

class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

class ResultFailure<T> extends Result<T> {
  final Failure failure;
  const ResultFailure(this.failure);
}

extension ResultX<T> on Result<T> {
  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is ResultFailure<T>;

  T? get dataOrNull => switch (this) {
        Success(:final data) => data,
        ResultFailure() => null,
      };

  Failure? get failureOrNull => switch (this) {
        Success() => null,
        ResultFailure(:final failure) => failure,
      };

  R when<R>({
    required R Function(T data) success,
    required R Function(Failure failure) failure,
  }) {
    return switch (this) {
      Success(data: final d) => success(d),
      ResultFailure(failure: final f) => failure(f),
    };
  }
}

// Factory constructors via extension
extension ResultFactory<T> on Result<T> {
  static Result<T> success<T>(T data) => Success(data);
  static Result<T> failure<T>(Failure failure) => ResultFailure(failure);
}
