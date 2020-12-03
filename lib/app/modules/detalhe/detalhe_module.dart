import 'package:dio/dio.dart';
import 'repositories/detalhe_repository.dart';
import 'detalhe_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detalhe_page.dart';

class DetalheModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DetalheRepository,
        $DetalheController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => DetalhePage()),
      ];

  static Inject get to => Inject<DetalheModule>.of();
}
