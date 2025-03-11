import 'package:glyph_o_matic/data/runes_definition.dart';

import 'graphemes.dart';

enum Diacritic { none, long, upper, voiced }

String getDiacriticAsset(Diacritic diacritic) {
  String diacriticString = diacritic.name;
  return "assets/graphemes/diacritics/$diacriticString.png";
}

String getDiacriticFromRune(Rune rune) {
  if (rune.diacritic == Diacritic.none) {
    return "";
  }

  return getDiacriticAsset(rune.diacritic);
}

bool isDiacriticSuitable(Grapheme grapheme, Diacritic diacritic) {
  if(diacritic == Diacritic.none) {
    return true;
  }

  if(diacritic == Diacritic.long || diacritic == Diacritic.upper) {
    return getIsVowel(grapheme);
  }

  if(diacritic == Diacritic.voiced) {
    return getIsVoicable(grapheme);
  }

  return false;
}