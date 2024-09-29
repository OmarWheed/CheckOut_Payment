import 'package:flutter/material.dart';

class HalfCircle extends StatelessWidget {
  final double? leftSide;
  final double? rightSide;
  const HalfCircle({
    super.key,
    this.leftSide,
    this.rightSide,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.of(context).size.height * 0.2,
        left: leftSide,
        right: rightSide,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}
