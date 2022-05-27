

import 'package:appv2/src/features/auth/data/repository/login_repository.dart';
import 'package:appv2/src/features/auth/domain/repository/login_interface.dart';
import 'package:appv2/src/features/auth/domain/useCase/login_usecase.dart';
import 'package:appv2/src/features/auth/presentation/view/login_page.dart';
import 'package:appv2/src/features/auth/presentation/viewmodel/login_viewmodel.dart';

import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) => LoginViewModel()),
    Bind.factory((i) => LoginUseCase()),
    Bind.factory<ILogin>((i) => LoginRepository()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/login', child: (_, __) => const LoginPage()),
      ];
}
