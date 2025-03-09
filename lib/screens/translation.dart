import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_display.dart';
import 'package:glyph_o_matic/components/runic_keyboard.dart';
import 'package:glyph_o_matic/data/phonemes.dart';

import '../components/translation_switcher.dart';
import '../data/runes_definition.dart';

class Translation extends StatelessWidget {
  const Translation({super.key});

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
          TranslationSwitcher(),
          RunicDisplay(runes: testRunes),
          RunicKeyboard(),
        ],
      )),
    );
  }
}
