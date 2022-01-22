import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  String textInfo = "Informe seus dados";

  void _resetFields() {
    heightController.clear();
    weightController.text = "";
    textInfo = "Informe seus dados";
  }

  void _calculaImc() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double imc = weight / (height * height);

    if (imc < 18.6) {
      textInfo = "Você está abaixo do peso ${imc.toStringAsPrecision(2)}";
    } else if (imc > 18.6 && imc < 24.9) {
      textInfo = "Você está no peso ideal ${imc.toStringAsPrecision(2)}";
    } else if (imc > 24.9 && imc < 29.9) {
      textInfo =
          "Você está levemente acima do peso ${imc.toStringAsPrecision(2)}";
    } else if (imc > 29.9 && imc < 34.9) {
      textInfo = "Você está com obesidade grau I ${imc.toStringAsPrecision(2)}";
    } else if (imc > 34.9 && imc < 39.9) {
      textInfo =
          "Você está com obesidade grau II  ${imc.toStringAsPrecision(2)}";
    } else {
      textInfo =
          "Você está com obesidade grau III  ${imc.toStringAsPrecision(2)}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: Image.asset('assets/images/logo_home.png'),
        title: const Text(
          'Calculadora IMC',
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _resetFields();
              });
            },
            child: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Image.asset(
                'assets/images/user.png',
              ),
            ),
            const SizedBox(
              height: 47,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: weightController,
                decoration: const InputDecoration(
                  hintText: 'Peso (Kg)',
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: heightController,
                decoration: const InputDecoration(
                  hintText: 'Altura (cm)',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 33.5),
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _calculaImc();
                  });
                },
                child: const Text('Calcular'),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Text(textInfo),
          ],
        ),
      ),
    );
  }
}
