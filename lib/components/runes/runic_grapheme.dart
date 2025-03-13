import 'package:flutter/material.dart';

class RunicGrapheme extends StatelessWidget {
  const RunicGrapheme({
    super.key,
    required this.assetString,
    required this.iconScale,
  });

  final String assetString;
  final double iconScale;

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetString, scale: 3);
  }
}
