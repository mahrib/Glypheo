import 'package:flutter/material.dart';

class RunicStrikethrough extends StatelessWidget {
  const RunicStrikethrough({super.key});

  @override
  Widget build(BuildContext context) {
    final assetString = "assets/graphemes/punctuation/line.png";

    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Image.asset(
        assetString,
      ),
    );
  }
}
