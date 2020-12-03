// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalhe_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DetalheController = BindInject(
  (i) => DetalheController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetalheController on _DetalheControllerBase, Store {
  Computed<List<ItemDefinitionModel>> _$getListItemsComputed;

  @override
  List<ItemDefinitionModel> get getListItems => (_$getListItemsComputed ??=
          Computed<List<ItemDefinitionModel>>(() => super.getListItems,
              name: '_DetalheControllerBase.getListItems'))
      .value;

  final _$_characterModelAtom =
      Atom(name: '_DetalheControllerBase._characterModel');

  @override
  CharacterModel get _characterModel {
    _$_characterModelAtom.reportRead();
    return super._characterModel;
  }

  @override
  set _characterModel(CharacterModel value) {
    _$_characterModelAtom.reportWrite(value, super._characterModel, () {
      super._characterModel = value;
    });
  }

  final _$_equipamentModelAtom =
      Atom(name: '_DetalheControllerBase._equipamentModel');

  @override
  EquipamentModel get _equipamentModel {
    _$_equipamentModelAtom.reportRead();
    return super._equipamentModel;
  }

  @override
  set _equipamentModel(EquipamentModel value) {
    _$_equipamentModelAtom.reportWrite(value, super._equipamentModel, () {
      super._equipamentModel = value;
    });
  }

  final _$_listAtom = Atom(name: '_DetalheControllerBase._list');

  @override
  ObservableList<ItemDefinitionModel> get _list {
    _$_listAtom.reportRead();
    return super._list;
  }

  @override
  set _list(ObservableList<ItemDefinitionModel> value) {
    _$_listAtom.reportWrite(value, super._list, () {
      super._list = value;
    });
  }

  final _$getItemsAsyncAction = AsyncAction('_DetalheControllerBase.getItems');

  @override
  Future getItems() {
    return _$getItemsAsyncAction.run(() => super.getItems());
  }

  @override
  String toString() {
    return '''
getListItems: ${getListItems}
    ''';
  }
}
