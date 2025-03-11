import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/single_phoneme.dart';

import '../../data/runes_definition.dart';
import '../runes/runic_symbol.dart';

class ButtonContentRune extends StatelessWidget {
  const ButtonContentRune({super.key, required this.rune});

  final Rune rune;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 30),
          child: RunicSymbol(rune: rune),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: SinglePhoneme(buttonString: rune.sound.name),
        )
      ],
    );
  }
}
