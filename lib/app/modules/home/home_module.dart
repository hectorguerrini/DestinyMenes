import 'package:destinymenes/app/modules/detalhe/detalhe_module.dart';
import 'package:dio/dio.dart';
import 'repositories/home_repository.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeRepository,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/detalhe', module: DetalheModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
