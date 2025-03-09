import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/single_phoneme.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

class EnglishDisplay extends StatelessWidget {
  const EnglishDisplay({super.key, required this.word});

  final RuneWord word;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [for (var rune in word.runes) SinglePhoneme(rune: rune)],
    );
  }
}
