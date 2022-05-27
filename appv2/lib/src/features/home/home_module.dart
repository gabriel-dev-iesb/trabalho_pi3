

import 'package:appv2/src/features/home/presentation/view/home.dart';

import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => HomePage(userToken: args.data)),
      ];
}
