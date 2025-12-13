import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/core/errors/exceptions.dart';

void main() {
  group('Exceptions', () {
    group('ServerException', () {
      test('should store message', () {
        const exception = ServerException('Server error occurred');

        expect(exception.message, 'Server error occurred');
      });

      test('should store optional status code', () {
        const exception = ServerException('Not found', statusCode: 404);

        expect(exception.message, 'Not found');
        expect(exception.statusCode, 404);
      });

      test('should have correct toString', () {
        const exception = ServerException('Server error');

        expect(exception.toString(), 'ServerException: Server error');
      });
    });

    group('CacheException', () {
      test('should store message', () {
        const exception = CacheException('Cache read failed');

        expect(exception.message, 'Cache read failed');
      });

      test('should have correct toString', () {
        const exception = CacheException('No cached data');

        expect(exception.toString(), 'CacheException: No cached data');
      });
    });

    group('NetworkException', () {
      test('should store message', () {
        const exception = NetworkException('No internet connection');

        expect(exception.message, 'No internet connection');
      });

      test('should have correct toString', () {
        const exception = NetworkException('Connection timeout');

        expect(exception.toString(), 'NetworkException: Connection timeout');
      });
    });

    group('LocationException', () {
      test('should store message', () {
        const exception = LocationException('Location permission denied');

        expect(exception.message, 'Location permission denied');
      });

      test('should have correct toString', () {
        const exception = LocationException('GPS disabled');

        expect(exception.toString(), 'LocationException: GPS disabled');
      });
    });
  });
}
