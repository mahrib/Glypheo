import 'package:glyph_o_matic/data/runes_definition.dart';

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
