import 'package:glyph_o_matic/data/runes_definition.dart';

enum Grapheme {
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

String getGraphemeAssetFromRune(Rune rune)
{
  String graphemeString = rune.grapheme.name;
  String folder = rune.bIsVowel ? "vowels" : "consonants";
  return "assets/graphemes/$folder/$graphemeString.png";
}