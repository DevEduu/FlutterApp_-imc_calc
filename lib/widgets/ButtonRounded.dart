import 'package:app_imc_calc/consts/constantes.dart';
import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  const ButtonRounded({
    super.key,
    this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: kcolorContainerBottom,
    );
  }
}
