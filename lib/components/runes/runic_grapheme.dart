import 'package:flutter/material.dart';

class RunicGrapheme extends StatelessWidget {
  const RunicGrapheme({super.key, required this.assetString});

  final String assetString;

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetString, scale: 3);
  }
}
