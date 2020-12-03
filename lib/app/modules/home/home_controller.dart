import 'package:destinymenes/app/modules/home/repositories/home_repository.dart';
import 'package:destinymenes/app/shared/models/character_model.dart';
import 'package:destinymenes/app/shared/models/profile_model.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final HomeRepository _repository = Modular.get();

  @observable
  ObservableFuture<ProfileModel> _profileModel;

  @observable
  ObservableList<CharacterModel> _listCharacters =
      new ObservableList<CharacterModel>();

  @computed
  ObservableList<CharacterModel> get getListCharacters => _listCharacters;

  @computed
  String get getDisplayName => _profileModel.value != null
      ? _profileModel.value.userInfo.displayName
      : '';

  _HomeControllerBase() {
    this.getProfile();
  }

  @action
  getProfile() async {
    _profileModel = this._repository.fetchProfile().asObservable();
    _profileModel.then((value) => value.characterIds.forEach((element) async {
          this._repository.fetchCharacter(element).then((value) {
            _listCharacters.add(value);
          });
        }));
  }

  @action
  goDetalhe(CharacterModel characterModel) {
    Modular.to.pushNamed('/detalhe', arguments: characterModel);
  }
}
