import 'package:appv2/src/features/auth/auth_module.dart';
import 'package:appv2/src/features/home/home_module.dart';
import 'package:appv2/src/features/onboarding/onboarding_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: OnboardingModule()),
        ModuleRoute('/auth/', module: LoginModule()),
        ModuleRoute('/home/', module: HomeModule()),
      ];
}