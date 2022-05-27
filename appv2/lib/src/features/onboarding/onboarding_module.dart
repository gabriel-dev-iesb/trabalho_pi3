import 'package:appv2/src/features/onboarding/presentation/view/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const OnboardingPage()),
      ];
}
