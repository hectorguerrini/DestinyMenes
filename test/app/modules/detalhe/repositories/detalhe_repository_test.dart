import 'package:destinymenes/app/shared/config/dioHttp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:destinymenes/app/modules/detalhe/repositories/detalhe_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  DetalheRepository repository;
  // MockClient client;

  setUp(() {
    repository = DetalheRepository(new DioHttp());
    // client = MockClient();
  });

  group('DetalheRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<DetalheRepository>());
    //  });

    test('retorna o equipamento do character', () async {
      final response =
          await repository.fetchEquipmentCharacter('2305843009404904484');
      print(response);
    });
    test('retorna o item', () async {
      final response = await repository.fetchItemDefinition(614426548);
      print(response);
    });
  });
}
