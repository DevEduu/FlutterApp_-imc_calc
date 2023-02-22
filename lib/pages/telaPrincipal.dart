import 'package:app_imc_calc/calculadora_imc.dart';
import 'package:app_imc_calc/consts/constantes.dart';
import 'package:app_imc_calc/pages/resultPage.dart';
import 'package:app_imc_calc/sexo.dart';
import 'package:app_imc_calc/widgets/ButtonRounded.dart';
import 'package:app_imc_calc/widgets/contant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/ButttonLow.dart';
import '../widgets/StandardCard.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Sexo? sexoSeleciona;
  int altura = 180;
  int peso = 60;
  int idade = 23;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: StandardCard(
                  onTapFunc: () {
                    setState(() {
                      sexoSeleciona = Sexo.masculino;
                    });
                  },
                  selectColor: sexoSeleciona == Sexo.masculino
                      ? kcolorStandardCard
                      : kcolorStandardCardOff,
                  childCard: ContentICon(
                    textCard: 'MASCULINO',
                    iconCont: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                  child: StandardCard(
                    onTapFunc: () {
                      setState(() {
                        sexoSeleciona = Sexo.feminino;
                      });
                    },
                    selectColor: sexoSeleciona == Sexo.feminino
                        ? kcolorStandardCard
                        : kcolorStandardCardOff,
                    childCard: ContentICon(
                      textCard: 'FEMININO',
                      iconCont: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: StandardCard(
              selectColor: kcolorStandardCard,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tamanho',
                    style: kdescricaoTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$altura',
                        style: kstyleTextData,
                      ),
                      Text(
                        'cm',
                        style: kdescricaoTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    activeColor: kcolorContainerBottom,
                    value: altura.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newValue) {
                      setState(() {
                        altura = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: StandardCard(
                    selectColor: kcolorStandardCard,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PESO',
                          style: kdescricaoTextStyle,
                        ),
                        Text(
                          '$peso',
                          style: kstyleTextData,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ButtonRounded(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  peso--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            ButtonRounded(
                              onPressed: () {
                                setState(() {
                                  peso++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    selectColor: kcolorStandardCard,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'IDADE',
                          style: kdescricaoTextStyle,
                        ),
                        Text(
                          '$idade',
                          style: kstyleTextData,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ButtonRounded(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  idade--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            ButtonRounded(
                              onPressed: () {
                                setState(() {
                                  idade++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container Bottom
          ButttonLow(
            textButton: 'CALCULAR',
            onPressed: () {
              setState(() {
                Calculadora calc = Calculadora(altura: altura, peso: peso);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                          statusImc: calc.obterResult(),
                          imc: calc.calc(),
                          interpretacao: calc.obterInterpretacao()),
                    ));
              });
            },
          ),
        ],
      ),
    );
  }
}
