import 'package:flutter/material.dart';

import '../../../styles.dart';

class OverviewDesign extends StatelessWidget {
  final String text;

  const OverviewDesign({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      constraints: const BoxConstraints.expand(height: 225),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [lightBlueIsh, lightGreen],
              begin: const FractionalOffset(1.0, 1.0),
              end: const FractionalOffset(0.2, 0.2),
              stops: const [0.0, 1.0]),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: titleStyleWhite,
            )
          ],
        ),
      ),
    );
  }
}
