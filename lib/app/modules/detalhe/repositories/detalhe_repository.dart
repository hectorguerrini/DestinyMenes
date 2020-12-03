import 'package:destinymenes/app/shared/config/dioHttp.dart';
import 'package:destinymenes/app/shared/models/item_definition_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:destinymenes/app/shared/models/equipament_model.dart';
part 'detalhe_repository.g.dart';

@Injectable()
class DetalheRepository extends Disposable {
  final DioHttp client;

  DetalheRepository(this.client);

  Future<EquipamentModel> fetchEquipmentCharacter(String character) async {
    final response = await client.get(
        '/Platform/Destiny2/3/Profile/4611686018468100774/Character/$character/',
        queryParameters: {'components': '205'});
    if (response.statusCode == 200) {
      return EquipamentModel.fromJson(
          response.data['Response']['equipment']['data']);
    } else {
      return EquipamentModel();
    }
  }

  Future<ItemDefinitionModel> fetchItemDefinition(int itemHash) async {
    final response = await client.get(
        '/Platform/Destiny2/Manifest/DestinyInventoryItemDefinition//$itemHash');
    if (response.statusCode == 200) {
      return ItemDefinitionModel.fromJson(response.data['Response']);
    } else {
      return ItemDefinitionModel();
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
