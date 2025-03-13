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
      alignment: Alignment.center,
      children: [
        Positioned(
          left: 4,
          right: 4,
          top: 10,
          bottom: 25,
          child: Center(child: RunicSymbol(rune: rune)),
        ),
        Positioned(
          bottom: 4,
          child: SinglePhoneme(buttonString: rune.sound.name),
        )
      ],
    );
  }
}
