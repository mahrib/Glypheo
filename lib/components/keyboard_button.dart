import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_symbol.dart';
import 'package:glyph_o_matic/data/graphemes.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

import '../data/diacritics.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({super.key, required this.grapheme, required this.diacritic});

  final Grapheme grapheme;
  final Diacritic diacritic;

  @override
  Widget build(BuildContext context) {
    Rune rune = runeFromGraphemeAndDiacritic(grapheme, diacritic);

    return RunicSymbol(rune: rune);
  }
}
