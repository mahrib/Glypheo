import 'package:flutter/material.dart';

import '../data/keyboard_definition.dart';

//layout
const double kButtonPadding = 8;

//colors

//light keyboard

const kLightBG = Color(0xFFdedede);
const kLightKeyboardBG = Color(0xFFececec);
const kLightKeyContent = Color(0xFFf0c7bf);

//dark keyboard

const kDarkBG = Color(0xFF2a2a2a);

const kDisplayBG = Colors.black87;

const kVowel = Color(0xff2f2622);
const kVowelDiacritic = Color(0xff2c2723);

const kConsonantSingle = Color(0xFFa3d39c);

const kConsonantVoiced = Color(0xFF7da7d9);
const kConsonantDiacritic = Color(0xFF8781bd);

const kOther = Color(0xff3e3e3e);

Map<KeyboardButtonType, Color> keyboardButtonColors = {
  KeyboardButtonType.vRune: kVowel,
  KeyboardButtonType.csRune: kConsonantSingle,
  KeyboardButtonType.cvRune: kConsonantVoiced,
  KeyboardButtonType.vDiacritic: kVowelDiacritic,
  KeyboardButtonType.cDiacritic: kConsonantDiacritic,
  KeyboardButtonType.space: kOther,
  KeyboardButtonType.backspace: kOther,
};

Color getButtonColor(KeyboardButtonType type) {
  return keyboardButtonColors[type]!;
}

Map<KeyboardButtonType, String> keyboardButtonBG = {
  KeyboardButtonType.vRune: "assets/ui/vowel.png",
  KeyboardButtonType.csRune: "assets/ui/single.png",
  KeyboardButtonType.cvRune: "assets/ui/voicable.png",
  KeyboardButtonType.vDiacritic: "assets/ui/vDiacritic.png",
  KeyboardButtonType.cDiacritic: "assets/ui/cDiacritic.png",
  KeyboardButtonType.space: "assets/ui/other.png",
  KeyboardButtonType.backspace: "assets/ui/other.png",
  KeyboardButtonType.other: "assets/ui/other.png",
};

String getButtonBG(KeyboardButtonType type) {
  return keyboardButtonBG[type]!;
}
