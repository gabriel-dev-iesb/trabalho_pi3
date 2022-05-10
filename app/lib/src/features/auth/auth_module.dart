import 'package:aider/src/features/auth/data/repository/login_repository.dart';
import 'package:aider/src/features/auth/domain/repository/login_interface.dart';
import 'package:aider/src/features/auth/domain/usecase/login_usecase.dart';
import 'package:aider/src/features/auth/presentation/viewmodel/login_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:aider/src/features/auth/presentation/view/page/login_page.dart';
import 'package:aider/src/features/auth/presentation/view/page/reset_password_page.dart';
import 'package:aider/src/features/auth/presentation/view/page/signup_page.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) => LoginViewModel()),
    Bind.factory((i) => LoginUseCase()),
    Bind.factory<ILogin>((i) => LoginRepository()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/login', child: (_, __) => const LoginPage()),
        ChildRoute('/signup', child: (_, __) => const SignUpPage()),
        ChildRoute('/reset-password', child: (_, __) => ResetPasswordPage()),
      ];
}
