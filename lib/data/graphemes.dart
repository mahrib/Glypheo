import 'package:glyph_o_matic/data/runes_definition.dart';

enum Grapheme {
  none,
  a,
  e,
  i,
  o,
  u,
  pb,
  td,
  fv,
  sz,
  th,
  ckg,
  shzh,
  chj,
  m,
  n,
  l,
  r,
  w,
  h,
  y,
  ng
}

String getGraphemeAssetFromRune(Rune rune) {
  String graphemeString = rune.grapheme.name;
  String folder = rune.bIsVowel ? "vowels" : "consonants";
  return "assets/graphemes/$folder/$graphemeString.png";
}

bool getIsVowel(Grapheme grapheme) {
  return grapheme == Grapheme.a ||
      grapheme == Grapheme.e ||
      grapheme == Grapheme.i ||
      grapheme == Grapheme.o ||
      grapheme == Grapheme.u;
}

bool getIsConsonant(Grapheme grapheme) {
  return !getIsVowel(grapheme);
}

bool getIsVoicable(Grapheme grapheme) {
  return grapheme == Grapheme.pb ||
      grapheme == Grapheme.td ||
      grapheme == Grapheme.fv ||
      grapheme == Grapheme.sz ||
      grapheme == Grapheme.th ||
      grapheme == Grapheme.ckg ||
      grapheme == Grapheme.shzh ||
      grapheme == Grapheme.chj;
}
