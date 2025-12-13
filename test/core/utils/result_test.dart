import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/core/utils/result.dart';

void main() {
  group('Result', () {
    group('Success', () {
      test('should hold data correctly', () {
        const Result<String> result = Success<String>('test data');

        expect((result as Success).data, 'test data');
      });

      test('should execute success callback in when', () {
        const Result<int> result = Success<int>(42);

        final value = result.when(
          success: (data) => 'Success: $data',
          failure: (failure) => 'Failure: ${failure.message}',
        );

        expect(value, 'Success: 42');
      });

      test('should return data in getOrElse', () {
        const Result<String> result = Success<String>('hello');

        expect(result.getOrElse('default'), 'hello');
      });

      test('should return true for isSuccess', () {
        const Result<int> result = Success<int>(1);

        expect(result.isSuccess, true);
        expect(result.isFailure, false);
      });
    });

    group('ResultFailure', () {
      test('should hold failure correctly', () {
        const failure = ServerFailure('Server error');
        const Result<String> result = ResultFailure<String>(failure);

        expect((result as ResultFailure).failure, failure);
        expect((result as ResultFailure).failure.message, 'Server error');
      });

      test('should execute failure callback in when', () {
        const failure = NetworkFailure('No internet');
        const Result<int> result = ResultFailure<int>(failure);

        final value = result.when(
          success: (data) => 'Success: $data',
          failure: (f) => 'Failure: ${f.message}',
        );

        expect(value, 'Failure: No internet');
      });

      test('should return default in getOrElse', () {
        const failure = ServerFailure('Error');
        const Result<String> result = ResultFailure<String>(failure);

        expect(result.getOrElse('default'), 'default');
      });

      test('should return true for isFailure', () {
        const failure = ServerFailure('Error');
        const Result<int> result = ResultFailure<int>(failure);

        expect(result.isFailure, true);
        expect(result.isSuccess, false);
      });
    });

    group('Failure types', () {
      test('ServerFailure should have correct message', () {
        const failure = ServerFailure('Internal server error');
        expect(failure.message, 'Internal server error');
      });

      test('NetworkFailure should have correct message', () {
        const failure = NetworkFailure('Connection timeout');
        expect(failure.message, 'Connection timeout');
      });

      test('CacheFailure should have correct message', () {
        const failure = CacheFailure('Cache miss');
        expect(failure.message, 'Cache miss');
      });

      test('LocationFailure should have correct message', () {
        const failure = LocationFailure('Permission denied');
        expect(failure.message, 'Permission denied');
      });
    });
  });
}
