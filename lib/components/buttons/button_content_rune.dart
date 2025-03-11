import 'package:flutter/material.dart';

import '../../data/runes_definition.dart';
import '../runes/runic_symbol.dart';

class ButtonContentRune extends StatelessWidget {
  const ButtonContentRune({super.key, required this.rune});

  final Rune rune;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RunicSymbol(rune: rune),
    );
  }
}
