import 'package:aider/src/features/auth/presentation/view/login_page.dart';
import 'package:aider/src/features/auth/presentation/view/page2.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => LoginPage()),
        ChildRoute('/pagina', child: (_, __) => const Page2()),
      ];
}
