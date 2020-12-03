// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<ObservableList<CharacterModel>> _$getListCharactersComputed;

  @override
  ObservableList<CharacterModel> get getListCharacters =>
      (_$getListCharactersComputed ??= Computed<ObservableList<CharacterModel>>(
              () => super.getListCharacters,
              name: '_HomeControllerBase.getListCharacters'))
          .value;
  Computed<String> _$getDisplayNameComputed;

  @override
  String get getDisplayName =>
      (_$getDisplayNameComputed ??= Computed<String>(() => super.getDisplayName,
              name: '_HomeControllerBase.getDisplayName'))
          .value;

  final _$_profileModelAtom = Atom(name: '_HomeControllerBase._profileModel');

  @override
  ObservableFuture<ProfileModel> get _profileModel {
    _$_profileModelAtom.reportRead();
    return super._profileModel;
  }

  @override
  set _profileModel(ObservableFuture<ProfileModel> value) {
    _$_profileModelAtom.reportWrite(value, super._profileModel, () {
      super._profileModel = value;
    });
  }

  final _$_listCharactersAtom =
      Atom(name: '_HomeControllerBase._listCharacters');

  @override
  ObservableList<CharacterModel> get _listCharacters {
    _$_listCharactersAtom.reportRead();
    return super._listCharacters;
  }

  @override
  set _listCharacters(ObservableList<CharacterModel> value) {
    _$_listCharactersAtom.reportWrite(value, super._listCharacters, () {
      super._listCharacters = value;
    });
  }

  final _$getProfileAsyncAction = AsyncAction('_HomeControllerBase.getProfile');

  @override
  Future getProfile() {
    return _$getProfileAsyncAction.run(() => super.getProfile());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic goDetalhe(CharacterModel characterModel) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.goDetalhe');
    try {
      return super.goDetalhe(characterModel);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getListCharacters: ${getListCharacters},
getDisplayName: ${getDisplayName}
    ''';
  }
}
