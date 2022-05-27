import 'package:aider/src/features/auth/domain/model/user.dart';
import 'package:aider/src/features/auth/presentation/viewmodel/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String user;
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, LoginViewModel> {
  Widget testBtn(store) => Container(
        margin: const EdgeInsets.fromLTRB(30, 15, 30, 5),
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: () {
            print(widget.user);
          },
          //FIXME: Adicionar texto do i18n
          child: const Text('Test Print store'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: testBtn(store),
        ));
  }
}
