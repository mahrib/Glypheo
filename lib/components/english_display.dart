import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/single_phoneme.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

class EnglishDisplay extends StatelessWidget {
  const EnglishDisplay({super.key, required this.runes});

  final List<Rune> runes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [for (var rune in runes) SinglePhoneme(rune: rune)],
    );
  }
}
