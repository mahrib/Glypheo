import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_display.dart';
import 'package:glyph_o_matic/components/runic_keyboard.dart';
import 'package:glyph_o_matic/data/phonemes.dart';

import '../data/runes_definition.dart';

class Translation extends StatefulWidget {
  const Translation({super.key});

  @override
  State<Translation> createState() => _TranslationState();
}

class _TranslationState extends State<Translation> {
  List<Rune> runes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 64),
          RunicDisplay(runes: runes),
          SizedBox(height: 64),
          RunicKeyboard(
            onRunePressed: (rune) => addRune(rune),
            onSpacePressed: () => space(),
            onBackspacePressed: () => backspace(),
            onClearPressed: () => clearRunes(),
          ),
        ],
      )),
    );
  }

  void addRune(Rune rune) {
    setState(() {
      runes.add(rune);
    });
  }

  void space() {
    setState(() {
      runes.add(runeFromPhoneme(Phoneme.none));
    });
  }

  void backspace() {
    setState(() {
      runes.removeLast();
    });
  }

  void clearRunes() {
    setState(() {
      runes.clear();
    });
  }
}
