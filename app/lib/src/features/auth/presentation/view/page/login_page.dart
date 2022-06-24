import 'package:aider/src/features/onboarding/presentation/view/widget/add_spacing.dart';
import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';
import 'package:localization/localization.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: _containerBody(),
      appBar: AppBar(
        title: Text("title-login".i18n(), style: const TextStyle(fontSize: 20)),
        centerTitle: true,
        
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              IconData(0xe743, fontFamily: 'MaterialIcons'),
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  _containerBody() {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Color.fromARGB(255, 204, 241, 205)])),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 35),
            child: Image.asset('lib/assets/images/Logo.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right: 20, top: 0),
            child: Text(
              'Torne o mundo um lugar melhor!',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                ),
            ),
            
          ),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              fontSize: 18,
            ),
            decoration: AppStyle.textFieldDecoration(
              labelText: "email-placeholder-login".i18n(),
              hintText: "example@email.com",
              prefixIcon:
                  const Icon(Icons.email, size: 18.0, color: Colors.black45),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: AppStyle.textFieldDecoration(
                    labelText: "password-placeholder-login".i18n(),
                    hintText: "Sua senha",
                    prefixIcon: const Icon(Icons.lock,
                        size: 18.0, color: Colors.black45),
                    suffixIcon: const Icon(Icons.visibility,
                        size: 18.0, color: Colors.black45),
                        
                    )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 50,
            //padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('sign-in-login'.i18n()),
              onPressed: () {
                // ignore: avoid_print
                print('Pressed');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 0),
            padding: const EdgeInsets.only(top: 14),
            child: GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "reset-password-login".i18n(),
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {
                  Modular.to.pushNamed('/auth/reset-password');
                }),
          ),
          _footer(),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 50,
            //padding: const EdgeInsets.only(left: 110, right: 110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('sign-up-login'.i18n()),
              onPressed: () {
                // ignore: avoid_print
                Modular.to.pushNamed('/auth/signup');
                // print('Pressed');
              },
            ),
          ),
        ],
      ),
    );
  }

  _footer() {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Divider(
              color: Colors.black,
              height: 18,
            ),
          ),
        ),
        spacing(48),
        Text("divider-text-login".i18n(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Divider(
              color: Colors.black,
              height: 18,
            ),
          ),
        ),
      ])
    ]);
  }
}
