import 'package:destinymenes/app/modules/detalhe/repositories/detalhe_repository.dart';
import 'package:destinymenes/app/shared/models/character_model.dart';
import 'package:destinymenes/app/shared/models/equipament_model.dart';
import 'package:destinymenes/app/shared/models/item_definition_model.dart';

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detalhe_controller.g.dart';

@Injectable()
class DetalheController = _DetalheControllerBase with _$DetalheController;

abstract class _DetalheControllerBase with Store {
  final DetalheRepository _repository = Modular.get();

  @observable
  CharacterModel _characterModel;

  @observable
  EquipamentModel _equipamentModel;

  @observable
  ObservableList<ItemDefinitionModel> _list =
      new ObservableList<ItemDefinitionModel>();

  @computed
  List<ItemDefinitionModel> get getListItems => _list.toList();

  _DetalheControllerBase() {
    _characterModel = Modular.args.data;
    getItems();
  }

  @action
  getItems() async {
    _equipamentModel = await _repository
        .fetchEquipmentCharacter(this._characterModel.characterId);
    List<ItemDefinitionModel> _l = [];
    await Future.wait(_equipamentModel.items.map((element) async {
      ItemDefinitionModel item =
          await this._repository.fetchItemDefinition(element.itemHash);
      _l.add(item);
    }));

    _list.addAll(
        _l.where((element) => [2, 3, 24, 22].contains(element.itemType)));
  }
}
