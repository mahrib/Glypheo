import 'package:flutter/material.dart';

import 'diacritics.dart';
import 'graphemes.dart';

enum KeyboardButtonType { vRune, csRune, cvRune, vDiacritic, cDiacritic, space, backspace }

class KeyboardButtonDef {
  final KeyboardButtonType type;
  final dynamic data;

  KeyboardButtonDef({required this.type, required this.data});
}

List<KeyboardButtonDef> topRow = [
  KeyboardButtonDef(type: KeyboardButtonType.vRune, data: Grapheme.a),
  KeyboardButtonDef(type: KeyboardButtonType.vRune, data: Grapheme.e),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.m),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.n),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.l),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.pb),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.td),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.fv),
];

List<KeyboardButtonDef> middleRow = [
  KeyboardButtonDef(type: KeyboardButtonType.vDiacritic, data: Diacritic.long),
  KeyboardButtonDef(type: KeyboardButtonType.vRune, data: Grapheme.i),
  KeyboardButtonDef(type: KeyboardButtonType.vRune, data: Grapheme.o),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.r),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.w),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.sz),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.th),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.ckg),
];

List<KeyboardButtonDef> bottomRow = [
  KeyboardButtonDef(type: KeyboardButtonType.vDiacritic, data: Diacritic.upper),
  KeyboardButtonDef(type: KeyboardButtonType.vRune, data: Grapheme.u),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.h),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.y),
  KeyboardButtonDef(type: KeyboardButtonType.csRune, data: Grapheme.ng),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.shzh),
  KeyboardButtonDef(type: KeyboardButtonType.cvRune, data: Grapheme.chj),
  KeyboardButtonDef(type: KeyboardButtonType.cDiacritic, data: Diacritic.voiced),
];

List<KeyboardButtonDef> otherRow = [
  KeyboardButtonDef(type: KeyboardButtonType.space, data: Icons.space_bar),
  KeyboardButtonDef(type: KeyboardButtonType.backspace, data: Icons.backspace),
];

List<KeyboardButtonDef> getTopRow() {
  return topRow;
}

List<KeyboardButtonDef> getMiddleRow() {
  return middleRow;
}

List<KeyboardButtonDef> getBottomRow() {
  return bottomRow;
}

List<KeyboardButtonDef> getOtherRow() {
  return otherRow;
}
