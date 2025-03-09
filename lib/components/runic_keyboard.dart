import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/keyboard_button.dart';
import 'package:glyph_o_matic/data/diacritics.dart';
import 'package:glyph_o_matic/data/graphemes.dart';

import 'diacritic_button.dart';

class RunicKeyboard extends StatefulWidget {
  const RunicKeyboard({super.key});

  @override
  State<RunicKeyboard> createState() => _RunicKeyboardState();
}

class _RunicKeyboardState extends State<RunicKeyboard> {
  Diacritic diacritic = Diacritic.none;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //vowels
        const Text("vowels"),

        //vowel diacritics
        Row(
          children: [
            DiacriticButton(diacritic: Diacritic.long),
            DiacriticButton(diacritic: Diacritic.upper),
          ],
        ),

        Row(
          children: [
            KeyboardButton(grapheme: Grapheme.a, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.e, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.i, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.o, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.u, diacritic: diacritic)
          ],
        ),

        //voicable consonants
        const Text("voicable consonants"),

        //consonant diacritics
        Row(
          children: [
            DiacriticButton(diacritic: Diacritic.voiced),
          ],
        ),

        Row(
          children: [
            KeyboardButton(grapheme: Grapheme.pb, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.td, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.fv, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.sz, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.th, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.ckg, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.shzh, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.chj, diacritic: diacritic),
          ],
        ),

        //voicable consonants
        const Text("single consonants"),
        Row(
          children: [
            KeyboardButton(grapheme: Grapheme.m, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.n, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.l, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.r, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.w, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.h, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.y, diacritic: diacritic),
            KeyboardButton(grapheme: Grapheme.ng, diacritic: diacritic),
          ],
        ),
      ],
    );
  }
}
