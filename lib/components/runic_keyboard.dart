import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/buttons/button_content_diacritic.dart';
import 'package:glyph_o_matic/components/buttons/button_content_rune.dart';
import 'package:glyph_o_matic/components/buttons/button_content_icon.dart';
import 'package:glyph_o_matic/components/buttons/keyboard_button.dart';
import 'package:glyph_o_matic/data/diacritics.dart';
import 'package:glyph_o_matic/data/graphemes.dart';

import '../data/runes_definition.dart';

class RunicKeyboard extends StatefulWidget {
  const RunicKeyboard({
    super.key,
    required this.onRunePressed,
    required this.onSpacePressed,
    required this.onBackspacePressed,
    required this.onClearPressed,
  });

  final Function(Rune) onRunePressed;
  final Function() onSpacePressed;
  final Function() onBackspacePressed;
  final Function() onClearPressed;

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

        //backspace
        KeyboardButton(
          onPressed: (d) => widget.onBackspacePressed(),
          child: ButtonContentIcon(buttonIcon: Icons.backspace),
        ),

        //clear
        KeyboardButton(
          onPressed: (d) => widget.onClearPressed(),
          child: ButtonContentIcon(buttonIcon: Icons.clear),
        ),


        //vowels
        const Text("vowels"),

        //vowel diacritics
        Row(
          children: [
            KeyboardButton(
              data: Diacritic.long,
              onPressed: (d) => onDiacriticPressed(d),
              child: ButtonContentDiacritic(diacritic: Diacritic.long),
            ),
            KeyboardButton(
              data: Diacritic.upper,
              onPressed: (d) => onDiacriticPressed(d),
              child: ButtonContentDiacritic(diacritic: Diacritic.upper),
            ),
          ],
        ),

        Row(
          children: [
            for (var vowel in getVowelGraphemes())
              KeyboardButton(
                data: runeFromGraphemeAndDiacritic(vowel, _diacritic),
                onPressed: (d) => widget.onRunePressed(d),
                child: ButtonContentRune(
                  rune: runeFromGraphemeAndDiacritic(vowel, _diacritic),
                ),
              ),
          ],
        ),

        //voicable consonants
        const Text("voicable consonants"),

        //consonant diacritics
        Row(
          children: [
            KeyboardButton(
              data: Diacritic.voiced,
              onPressed: (d) => onDiacriticPressed(d),
              child: ButtonContentDiacritic(diacritic: Diacritic.voiced),
            ),
          ],
        ),

        Row(
          children: [
            for (var voicable in getVoicableConsonantGraphemes())
              KeyboardButton(
                data: runeFromGraphemeAndDiacritic(voicable, _diacritic),
                onPressed: (d) => widget.onRunePressed(d),
                child: ButtonContentRune(
                  rune: runeFromGraphemeAndDiacritic(voicable, _diacritic),
                ),
              ),
          ],
        ),

        //voicable consonants
        const Text("single consonants"),
        Row(
          children: [
            for (var single in getSingleConsonantGraphemes())
              KeyboardButton(
                data: runeFromGraphemeAndDiacritic(single, _diacritic),
                onPressed: (d) => widget.onRunePressed(d),
                child: ButtonContentRune(
                  rune: runeFromGraphemeAndDiacritic(single, _diacritic),
                ),
              ),
          ],
        ),

        //space
        KeyboardButton(
          onPressed: (d) => widget.onSpacePressed(),
          child: ButtonContentIcon(buttonIcon: Icons.space_bar),
        ),
      ],
    );
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
