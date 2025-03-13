import 'dart:ui';

import 'package:flutter/material.dart';

import '../data/keyboard_definition.dart';

//layout
const double kButtonPadding = 4;

//colors

//light keyboard

const kLightBG = Color(0xFFdedede);
const kLightKeyboardBG = Color(0xFFececec);
const kLightKeyContent = Color(0xFFf0c7bf);

const kDisplayBG = Colors.black87;

const kVowel = Color(0xFFf26c4f);
const kVowelDiacritic = Color(0xFFf68e56);

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
