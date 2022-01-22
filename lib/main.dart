import 'package:calculara_imc_aula_3/pages/calculator_page.dart';
import 'package:calculara_imc_aula_3/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(
          0xFFC1007E,
        ),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/calculator': (context) => const CalculatorPage()
      },
    );
  }
}
