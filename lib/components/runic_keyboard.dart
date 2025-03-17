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
    required this.showEnglish,
  });

  final Function(Rune) onRunePressed;
  final Function() onSpacePressed;
  final Function() onBackspacePressed;
  final Function() onClearPressed;

  final bool showEnglish;

  @override
  State<RunicKeyboard> createState() => _RunicKeyboardState();
}

class _RunicKeyboardState extends State<RunicKeyboard> {
  Diacritic _diacritic = Diacritic.none;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Padding(
          padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 40),
                  for (var button in getTopRow())
                    Expanded(child: constructKeyboardButton(button))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (var button in getMiddleRow())
                    Expanded(child: constructKeyboardButton(button)),
                  SizedBox(width: 40),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 40),
                  for (var button in getBottomRow())
                    Expanded(child: constructKeyboardButton(button))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: KeyboardButton(
                        onPressed: (d) => widget.onSpacePressed(),
                        type: KeyboardButtonType.space,
                        child: ButtonContentIcon(buttonIcon: Icons.space_bar)),
                  ),
                  SizedBox(
                    width: 120,
                    child: KeyboardButton(
                        onPressed: (d) => widget.onBackspacePressed(),
                        type: KeyboardButtonType.backspace,
                        child: ButtonContentIcon(buttonIcon: Icons.backspace)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
              showEnglish: widget.showEnglish,
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
              showEnglish: widget.showEnglish,
            ));

      case KeyboardButtonType.space:
      case KeyboardButtonType.backspace:
        return Placeholder();
      case KeyboardButtonType.other:
        throw UnimplementedError();
    }
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
