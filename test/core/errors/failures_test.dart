import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/core/errors/failures.dart';

void main() {
  group('Failures', () {
    test('ServerFailure should store message', () {
      const failure = ServerFailure('Server error');
      expect(failure.message, 'Server error');
      expect(failure, isA<Failure>());
    });

    test('CacheFailure should store message', () {
      const failure = CacheFailure('Cache error');
      expect(failure.message, 'Cache error');
      expect(failure, isA<Failure>());
    });

    test('NetworkFailure should store message', () {
      const failure = NetworkFailure('Network error');
      expect(failure.message, 'Network error');
      expect(failure, isA<Failure>());
    });

    test('LocationFailure should store message', () {
      const failure = LocationFailure('Location error');
      expect(failure.message, 'Location error');
      expect(failure, isA<Failure>());
    });

    test('UnknownFailure should store message', () {
      const failure = UnknownFailure('Unknown error');
      expect(failure.message, 'Unknown error');
      expect(failure, isA<Failure>());
    });
  });
}
