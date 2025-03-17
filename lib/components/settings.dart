import 'package:flutter/material.dart';

import '../data/keyboard_definition.dart';
import 'buttons/button_content_text.dart';
import 'buttons/keyboard_button.dart';

class Settings extends StatelessWidget {
  const Settings({super.key, required this.onEnglishToggled});

  final Function() onEnglishToggled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: KeyboardButton(
        type: KeyboardButtonType.other,
        onPressed: (e) => onEnglishToggled(),
        child: ButtonContentText(buttonText: "Toggle English"),
      ),
    );
  }
}
