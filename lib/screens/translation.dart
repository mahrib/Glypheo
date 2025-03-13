import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_display.dart';
import 'package:glyph_o_matic/components/runic_keyboard.dart';
import 'package:glyph_o_matic/data/phonemes.dart';

import '../config/ui_config.dart';
import '../data/graphemes.dart';
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
      backgroundColor: kLightKeyboardBG,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: RunicDisplay(runes: runes)),
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
    if (runes.last.grapheme == Grapheme.none) {
      return;
    }
    setState(() {
      runes.add(runeFromPhoneme(Phoneme.none));
    });
  }

  void backspace() {
    if (runes.isEmpty) {
      return;
    }
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
