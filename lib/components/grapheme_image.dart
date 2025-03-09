import 'package:flutter/material.dart';

class GraphemeImage extends StatelessWidget {
  const GraphemeImage({super.key, required this.assetString});

  final String assetString;

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetString, width: 28, height: 43.2);
  }
}
