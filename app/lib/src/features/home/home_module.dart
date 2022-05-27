import 'package:aider/src/features/auth/presentation/viewmodel/login_viewmodel.dart';
import 'package:aider/src/features/home/view/home.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) => LoginViewModel()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => HomePage(user: args.data)),
      ];
}