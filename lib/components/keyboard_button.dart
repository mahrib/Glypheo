import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_grapheme.dart';
import 'package:glyph_o_matic/components/runes/runic_symbol.dart';
import 'package:glyph_o_matic/components/single_phoneme.dart';
import 'package:glyph_o_matic/data/graphemes.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

import '../data/diacritics.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({
    super.key,
    required this.grapheme,
    required this.diacritic,
    required this.onPressed,
  });

  final Grapheme grapheme;
  final Diacritic diacritic;

  final Function(Grapheme, Diacritic) onPressed;

  @override
  Widget build(BuildContext context) {
    var suitableDiacritic = getSuitableDiacritic(grapheme, diacritic);


    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () => onPressed(grapheme, suitableDiacritic),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Builder(builder: (context) {

                if (grapheme == Grapheme.none) {
                  return RunicGrapheme(assetString: getDiacriticAsset(suitableDiacritic));
                }

                Rune rune =
                    runeFromGraphemeAndDiacritic(grapheme, suitableDiacritic);
                return RunicSymbol(rune: rune);
              }),
            ),
          ),
          SinglePhoneme(rune: runeFromGraphemeAndDiacritic(grapheme, suitableDiacritic)),
        ],
      ),
    );
  }
}

Diacritic getSuitableDiacritic(Grapheme grapheme, Diacritic diacritic) {
  if (grapheme == Grapheme.none) {
    return diacritic;
  } else {
    return isDiacriticSuitable(grapheme, diacritic)
        ? diacritic
        : Diacritic.none;
  }
}
