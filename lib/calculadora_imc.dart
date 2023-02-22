import 'dart:math';

class Calculadora {
  Calculadora({
    required this.altura,
    required this.peso,
  });

  final int altura;
  final int peso;
  String calc() {
    // ignore: no_leading_underscores_for_local_identifiers
    double imc = peso / pow(altura / 100, 2);
    return imc.toStringAsFixed(1);
  }

  double ganbiarra() {
    double imc = peso / pow(altura / 100, 2);
    return imc;
  }

  String obterResult() {
    double imc = ganbiarra();
    if (imc >= 25) {
      return 'Acima do peso';
    } else if (imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String obterInterpretacao() {
    double imc = ganbiarra();
    if (imc >= 25) {
      return 'Você está com o peso acima do normal. Tente se exercitar mais.';
    } else if (imc > 18.5) {
      return 'Excelente! O seu peso está normal';
    } else {
      return 'Você está com o peso abaixo do normal. Tente comer um pouco mais.';
    }
  }
}
