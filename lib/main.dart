import 'package:app_imc_calc/consts/constantes.dart';
import 'package:app_imc_calc/pages/telaPrincipal.dart';
import 'package:flutter/material.dart';

const Color colorScaffokdBg = Color.fromRGBO(27, 30, 38, 1);

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaPrincipal(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: colorScaffokdBg,
        appBarTheme: kappBarStyler,
      ),
    );
  }
}
