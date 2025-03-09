import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_symbol.dart';

import '../../data/runes_definition.dart';

class RunicPair extends StatelessWidget {
  const RunicPair({super.key, required this.runePair});

  final RunePair runePair;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(runePair.first != null)
        RunicSymbol(rune: runePair.first!),
        if(runePair.second != null)
        RunicSymbol(rune: runePair.second!)
      ],
    );
  }
}
