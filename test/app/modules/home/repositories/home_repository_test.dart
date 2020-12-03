import 'package:destinymenes/app/shared/config/dioHttp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:destinymenes/app/modules/home/repositories/home_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  HomeRepository repository;
  // MockClient client;

  setUp(() {
    repository = HomeRepository(new DioHttp());
    // client = MockClient();
  });

  group('HomeRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<HomeRepository>());
    //  });

    test('retorna o profile', () async {
      final response = await repository.fetchProfile();
      print(response);
    });
    test('retorna o character', () async {
      final response = await repository.fetchCharacter('2305843009404904484');
      print(response);
    });
  });
}
