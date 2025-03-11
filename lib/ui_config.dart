import 'dart:ui';

import 'data/keyboard_definition.dart';

//layout
const int kButtonPadding = 22;

//colors
const kVowel = Color(0xFFf26c4f);
const kVowelDiacritic = Color(0xFFf68e56);

const kConsonantSingle = Color(0xFFa3d39c);

const kConsonantVoiced = Color(0xFF7da7d9);
const kConsonantDiacritic = Color(0xFF8781bd);

const kOther = Color(0xFFc7b299);

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
