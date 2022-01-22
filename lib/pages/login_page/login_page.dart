import 'package:flutter/material.dart';

import 'widgets/custom_text_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/images/logo_ioasys.png'),
              const Padding(padding: EdgeInsets.only(top: 129)),
              const Text('Seja bem-vindo!',
                  style: TextStyle(
                    fontSize: 31,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Calculadora IMC',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 67),
                child: const CustomTextFieldWidget(
                  hintText: 'usuário',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFieldWidget(
                hintText: 'senha',
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/calculator');
                  },
                  child: const Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
