import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/single_phoneme.dart';

import '../../data/runes_definition.dart';
import '../runes/runic_symbol.dart';

class ButtonContentRune extends StatelessWidget {
  const ButtonContentRune({
    super.key,
    required this.rune,
    required this.showEnglish,
  });

  final Rune rune;
  final bool showEnglish;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(child: RunicSymbol(rune: rune)),
          ),
        ),
        if(showEnglish)
        SinglePhoneme(buttonString: rune.sound.name),
        SizedBox(height: 8)
      ],
    );
  }
}
