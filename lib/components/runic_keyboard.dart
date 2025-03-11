import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/keyboard_button.dart';
import 'package:glyph_o_matic/data/diacritics.dart';
import 'package:glyph_o_matic/data/graphemes.dart';

import '../data/phonemes.dart';
import '../data/runes_definition.dart';

class RunicKeyboard extends StatefulWidget {
  const RunicKeyboard({super.key, required this.onRunePressed});

  final Function(Rune) onRunePressed;

  @override
  State<RunicKeyboard> createState() => _RunicKeyboardState();
}

class _RunicKeyboardState extends State<RunicKeyboard> {
  Diacritic _diacritic = Diacritic.none;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //vowels
        const Text("vowels"),

        //vowel diacritics
        Row(
          children: [
            KeyboardButton(
                grapheme: Grapheme.none,
                diacritic: Diacritic.long,
                onPressed: (g, d) => onDiacriticPressed(d)),
            KeyboardButton(
                grapheme: Grapheme.none,
                diacritic: Diacritic.upper,
                onPressed: (g, d) => onDiacriticPressed(d)),
          ],
        ),

        Row(
          children: [
            KeyboardButton(
                grapheme: Grapheme.a,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.e,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.i,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.o,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.u,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d))
          ],
        ),

        //voicable consonants
        const Text("voicable consonants"),

        //consonant diacritics
        Row(
          children: [
            KeyboardButton(
                grapheme: Grapheme.none,
                diacritic: Diacritic.voiced,
                onPressed: (g, d) => onDiacriticPressed(d)),
          ],
        ),

        Row(
          children: [
            KeyboardButton(
                grapheme: Grapheme.pb,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.td,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.fv,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.sz,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.th,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.ckg,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.shzh,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.chj,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
          ],
        ),

        //voicable consonants
        const Text("single consonants"),
        Row(
          children: [
            KeyboardButton(
                grapheme: Grapheme.m,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.n,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.l,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.r,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.w,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.h,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.y,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
            KeyboardButton(
                grapheme: Grapheme.ng,
                diacritic: _diacritic,
                onPressed: (g, d) => onRunePressed(g, d)),
          ],
        ),

        KeyboardButton(
            grapheme: Grapheme.none,
            diacritic: Diacritic.none,
            onPressed: (g, d) => onRunePressed(g, d)),
      ],
    );
  }

  void onRunePressed(Grapheme grapheme, Diacritic diacritic) {
    var rune = runeFromGraphemeAndDiacritic(grapheme, diacritic);
    widget.onRunePressed(rune);
  }

  void onSpacePressed()
  {
    widget.onRunePressed(runeFromPhoneme(Phoneme.none));
  }

  void onDiacriticPressed(Diacritic diacritic) {
    setState(() {
      if (_diacritic == diacritic) {
        _diacritic = Diacritic.none;
      } else {
        _diacritic = diacritic;
      }
    });
  }
}
