import 'package:flutter/material.dart';
import 'package:aider/decoration/app_style.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _containerBody(),
      appBar: AppBar(
        title: Text("Login", style: TextStyle(fontSize: 20)),
        backgroundColor: Color(0xFF0CCE6B),
      ),

    );
  }

  _containerBody(){
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top:30, bottom:35),
            
            child: Image.asset('assets/images/Logo.png'),
          ),
          TextFormField(
            controller: this._emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 18,
            ),
            decoration: AppStyle.textFieldDecoration(labelText: "E-mail", hintText: "Digite seu email")
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: TextFormField(
              controller: this._passwordController,
              obscureText:true,
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: AppStyle.textFieldDecoration(labelText: "Senha", hintText: "Digite sua senha")
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:35),
            height: 50,
            padding: EdgeInsets.only(left:110, right:110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0CCE6B),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('ENTRAR'),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.only(top:20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "ESQUECI A SENHA",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[700],
                ),
              ),
            ),       
          ),
          _footer(),
          Container(
            margin: EdgeInsets.only(top:20),
            height: 50,
            padding: EdgeInsets.only(left:110, right:110),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0CCE6B),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('CRIAR CONTA'),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
  _footer(){
    return Column(
      children: [

        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Divider(
                  color: Colors.grey[600],
                  height: 26,
                ),
              ),
            ),
            Text(
              "OU",
              style: TextStyle(color: Color(0xFF0CCE6B))
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Divider(
                  color: Colors.grey[600],
                  height: 26,
                ),
              ),
            ),
          ]
        )
      ]
    );
  }
}