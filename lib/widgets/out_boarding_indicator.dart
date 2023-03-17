import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator({
    Key? key,
    required this.Selected,
    required this.EndMargin,
  }) :  super(key: key);

  final bool Selected;
  final double EndMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 4),
      width: 18,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        color: Selected ? Colors.blue : Colors.grey,
      ),
    );
  }
}
