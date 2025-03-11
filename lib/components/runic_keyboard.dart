import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/buttons/button_content_rune.dart';
import 'package:glyph_o_matic/components/buttons/keyboard_button.dart';
import 'package:glyph_o_matic/data/diacritics.dart';

import '../data/graphemes.dart';
import '../data/keyboard_definition.dart';
import '../data/runes_definition.dart';
import 'buttons/button_content_diacritic.dart';
import 'buttons/button_content_icon.dart';

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 40),
            for (var button in getTopRow()) constructKeyboardButton(button)
          ],
        ),
        Row(
          children: [
            for (var button in getMiddleRow()) constructKeyboardButton(button)
          ],
        ),
        Row(
          children: [
            SizedBox(width: 40),
            for (var button in getBottomRow()) constructKeyboardButton(button)
          ],
        ),
        Row(
          children: [
            Expanded(
              child: KeyboardButton(
                  onPressed: (d) => widget.onSpacePressed(),
                  type: KeyboardButtonType.space,
                  child: ButtonContentIcon(buttonIcon: Icons.space_bar)),
            ),
            KeyboardButton(
                onPressed: (d) => widget.onBackspacePressed(),
                type: KeyboardButtonType.backspace,
                child: ButtonContentIcon(buttonIcon: Icons.backspace)),
            SizedBox(width: 40),

          ],
        ),
      ],
    );
  }

  Widget constructKeyboardButton(KeyboardButtonDef button) {
    switch (button.type) {
      case KeyboardButtonType.vRune:
      case KeyboardButtonType.csRune:
      case KeyboardButtonType.cvRune:
        var grapheme = button.data as Grapheme;
        return KeyboardButton(
            data: runeFromGraphemeAndDiacritic(grapheme, _diacritic),
            onPressed: (d) => widget.onRunePressed(d),
            type: button.type,
            child: ButtonContentRune(
              rune: runeFromGraphemeAndDiacritic(grapheme, _diacritic),
            ));

      case KeyboardButtonType.vDiacritic:
      case KeyboardButtonType.cDiacritic:
        var diacritic = button.data as Diacritic;
        return KeyboardButton(
            data: diacritic,
            onPressed: (d) => onDiacriticPressed(d),
            type: button.type,
            child: ButtonContentDiacritic(
              diacritic: diacritic,
              isActive: _diacritic == diacritic,
            ));

      case KeyboardButtonType.space:
      case KeyboardButtonType.backspace:
        return Placeholder();

    }
    throw Exception("Invalid button type");
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
