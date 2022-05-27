import 'package:appv2/app_module.dart';
import 'package:appv2/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(module: AppModule(), child: const AppWidget())
  );
}