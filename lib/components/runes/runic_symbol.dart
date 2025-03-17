import 'package:flutter/material.dart';
import 'package:glyph_o_matic/data/graphemes.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

import '../../data/diacritics.dart';
import 'runic_grapheme.dart';

class RunicSymbol extends StatelessWidget {
  const RunicSymbol({super.key, required this.rune});

  final Rune rune;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RunicGrapheme(
            assetString: getGraphemeAssetFromRune(rune), iconScale: 3),
        if (rune.diacritic != Diacritic.none)
          RunicGrapheme(assetString: getDiacriticFromRune(rune), iconScale: 3),
      ],
    );
  }
}
