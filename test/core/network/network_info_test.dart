import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/core/network/network_info.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  group('NetworkInfoImpl', () {
    late NetworkInfoImpl networkInfo;
    late MockConnectivity mockConnectivity;

    setUp(() {
      mockConnectivity = MockConnectivity();
      networkInfo = NetworkInfoImpl(connectivity: mockConnectivity);
    });

    test('should return true when connected to wifi', () async {
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.wifi]);

      final result = await networkInfo.isConnected;

      expect(result, true);
    });

    test('should return true when connected to mobile', () async {
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.mobile]);

      final result = await networkInfo.isConnected;

      expect(result, true);
    });

    test('should return false when not connected', () async {
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.none]);

      final result = await networkInfo.isConnected;

      expect(result, false);
    });
  });
}
