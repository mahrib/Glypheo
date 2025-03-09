import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/english_display.dart';
import 'package:glyph_o_matic/components/runic_display.dart';
import 'package:glyph_o_matic/components/runic_keyboard.dart';

import '../components/translation_switcher.dart';

class Translation extends StatelessWidget {
  const Translation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          TranslationSwitcher(),
          RunicDisplay(),
          EnglishDisplay(),

          RunicKeyboard(),

        ],
      )),

    );
  }
}
