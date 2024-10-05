import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.2 + 20,
      left: 20 + 8,
      right: 20 + 8,
      child: Row(
        children: List.generate(
            30,
            (index) => Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    height: 2,
                    color: const Color(0xffB8B8B8),
                  ),
                )),
      ),
    );
  }
}
