import 'package:app_imc_calc/consts/constantes.dart';
import 'package:app_imc_calc/widgets/ButttonLow.dart';
import 'package:app_imc_calc/widgets/StandardCard.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key,
      required this.statusImc,
      required this.imc,
      required this.interpretacao});

  final String statusImc;
  final String imc;
  final String interpretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CALCULADORA IMC',
          style: TextStyle(color: kcolorContainerBottom),
        ),
      ),
      body: Column(
        children: [
          const Text(
            'RESULTADO',
            style: kstyleTextData,
          ),
          Expanded(
            flex: 5,
            child: StandardCard(
              selectColor: kcolorStandardCard,
              childCard: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        statusImc,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        imc,
                        style: const TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Text(
                        interpretacao,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ]),
              ),
            ),
          ),
          ButttonLow(
            textButton: 'RECALCULAR',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
