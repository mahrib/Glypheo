import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/clear_button.dart';
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
    List<Rune> testRunes = [
      runeFromPhoneme(Phoneme.th),
      runeFromPhoneme(Phoneme.ee),
      runeFromPhoneme(Phoneme.ohh),
      runeFromPhoneme(Phoneme.d),
      runeFromPhoneme(Phoneme.ore),
      runeFromPhoneme(Phoneme.none),
      runeFromPhoneme(Phoneme.eh),
      runeFromPhoneme(Phoneme.v),
      runeFromPhoneme(Phoneme.eh),
      runeFromPhoneme(Phoneme.w),
      runeFromPhoneme(Phoneme.u),
      runeFromPhoneme(Phoneme.d),
    ];

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 64),
          RunicDisplay(runes: runes),
          ClearButton(onPressed: () => setState(() => runes.clear())),
          SizedBox(height: 64),
          RunicKeyboard(onRunePressed: (rune) => addRune(rune)),
        ],
      )),
    );
  }

  void addRune(Rune rune) {
    setState(() {
      runes.add(rune);
    });
  }
}
