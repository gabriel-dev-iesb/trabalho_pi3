
import 'package:aider/src/features/onboarding/presentation/view/widget/add_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpDone extends StatelessWidget {
  const SignUpDone({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      // color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/onboarding_3.png',
            fit: BoxFit.contain,
            width: 220,
          ),
          spacing(48),
          Text(
            'Cadastro concluído',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          spacing(32),
          Text(
            'Obrigado por se cadastrar :D',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          spacing(32),
          SizedBox(
              width: double.infinity,
              child:  ElevatedButton(
                      onPressed: () {Modular.to.pushNamed('/auth/login'); },

                      child: const Text('Fazer login'),
                    )
                  )
        ],
      ),
    )
      )
    );
  }
}