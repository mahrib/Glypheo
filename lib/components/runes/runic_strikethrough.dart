import 'package:flutter/material.dart';

class RunicStrikethrough extends StatelessWidget {
  const RunicStrikethrough({super.key});

  @override
  Widget build(BuildContext context) {
    final assetString = "assets/graphemes/punctuation/line.png";

    return Image.asset(
      assetString,
      fit: BoxFit.fill,
      //repeat: ImageRepeat.repeatX,
      //centerSlice: Rect.fromLTRB(30, 0, 30, 0),
    );
  }
}
