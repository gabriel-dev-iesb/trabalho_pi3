import 'package:aider/src/features/auth/login_module.dart';
// import 'package:aider/src/features/onboarding/onboarding_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: LoginModule()),
      ];
}
