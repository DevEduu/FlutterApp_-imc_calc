import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  const StandardCard({
    super.key,
    required this.selectColor,
    this.childCard,
    this.onTapFunc,
  });
  final Color selectColor;
  final Widget? childCard;
  final Function()? onTapFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunc,
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 4,
            color: const Color.fromARGB(88, 255, 255, 255),
          ),
          color: selectColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: childCard,
      ),
    );
  }
}
