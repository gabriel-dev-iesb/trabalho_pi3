import 'package:aider/src/features/auth/presentation/view/page/login_page.dart';
import 'package:aider/src/features/auth/presentation/view/page/reset_password_page.dart';
import 'package:aider/src/features/auth/presentation/view/page/signup_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/login', child: (_, __) => LoginPage()),
        ChildRoute('/signup', child: (_, __) => const RegisterPage()),
        ChildRoute('/reset-password', child: (_, __) => const ResetPasswordPage()),
        // ModuleRoute('/home', child: (_, __) => HomePage()),
      ];
}
