import 'package:flutter/material.dart';
import 'package:glyph_o_matic/data/graphemes.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

import '../data/diacritics.dart';
import 'grapheme_image.dart';

class SingleRune extends StatelessWidget {
  const SingleRune({super.key, required this.rune});

  final Rune rune;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GraphemeImage(assetString: getGraphemeAssetFromRune(rune)),
        if (rune.diacritic != Diacritic.none)
        GraphemeImage(assetString: getDiacriticFromRune(rune)),
      ],
    );
  }
}
