import 'package:glyph_o_matic/data/diacritics.dart';
import 'package:glyph_o_matic/data/phonemes.dart';

import 'graphemes.dart';

class Rune {
  final bool bIsVowel;

  final Grapheme grapheme;
  final Diacritic diacritic;

  final Phoneme sound;

  Rune(
      {required this.bIsVowel,
      required this.grapheme,
      required this.diacritic,
      required this.sound});
}

class RunePair {
  final Rune? first;
  final Rune? second;

  RunePair({this.first, this.second});
}

class RuneWord {
  final List<Rune> runes;

  RuneWord({required this.runes});
}

List<Rune> runes = [
  //vowels
  //a
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.a,
      diacritic: Diacritic.none,
      sound: Phoneme.ah),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.a,
      diacritic: Diacritic.long,
      sound: Phoneme.aah),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.a,
      diacritic: Diacritic.upper,
      sound: Phoneme.ayy),

  //e
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.e,
      diacritic: Diacritic.none,
      sound: Phoneme.eh),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.e,
      diacritic: Diacritic.long,
      sound: Phoneme.ehh),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.e,
      diacritic: Diacritic.upper,
      sound: Phoneme.ee),

  //i
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.i,
      diacritic: Diacritic.none,
      sound: Phoneme.ih),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.i,
      diacritic: Diacritic.long,
      sound: Phoneme.iyh),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.i,
      diacritic: Diacritic.upper,
      sound: Phoneme.aye),

  //o
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.o,
      diacritic: Diacritic.none,
      sound: Phoneme.o),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.o,
      diacritic: Diacritic.long,
      sound: Phoneme.ore),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.o,
      diacritic: Diacritic.upper,
      sound: Phoneme.ohh),

  //u
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.u,
      diacritic: Diacritic.none,
      sound: Phoneme.u),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.u,
      diacritic: Diacritic.long,
      sound: Phoneme.uh),
  Rune(
      bIsVowel: true,
      grapheme: Grapheme.u,
      diacritic: Diacritic.upper,
      sound: Phoneme.oo),

  //voicable consonants
  //pb
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.pb,
      diacritic: Diacritic.none,
      sound: Phoneme.p),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.pb,
      diacritic: Diacritic.voiced,
      sound: Phoneme.b),

  //td
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.td,
      diacritic: Diacritic.none,
      sound: Phoneme.t),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.td,
      diacritic: Diacritic.voiced,
      sound: Phoneme.d),

  //fv
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.fv,
      diacritic: Diacritic.none,
      sound: Phoneme.f),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.fv,
      diacritic: Diacritic.voiced,
      sound: Phoneme.v),

  //sz
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.sz,
      diacritic: Diacritic.none,
      sound: Phoneme.s),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.sz,
      diacritic: Diacritic.voiced,
      sound: Phoneme.z),

  //th
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.th,
      diacritic: Diacritic.none,
      sound: Phoneme.th),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.th,
      diacritic: Diacritic.voiced,
      sound: Phoneme.thv),

  //ckg
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.ckg,
      diacritic: Diacritic.none,
      sound: Phoneme.ck),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.ckg,
      diacritic: Diacritic.voiced,
      sound: Phoneme.g),

  //shzh
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.shzh,
      diacritic: Diacritic.none,
      sound: Phoneme.sh),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.shzh,
      diacritic: Diacritic.voiced,
      sound: Phoneme.zh),

  //chj
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.chj,
      diacritic: Diacritic.none,
      sound: Phoneme.ch),
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.chj,
      diacritic: Diacritic.voiced,
      sound: Phoneme.j),

  //single consonants
  //m
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.m,
      diacritic: Diacritic.none,
      sound: Phoneme.m),

  //n
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.n,
      diacritic: Diacritic.none,
      sound: Phoneme.n),

  //l
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.l,
      diacritic: Diacritic.none,
      sound: Phoneme.l),

  //r
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.r,
      diacritic: Diacritic.none,
      sound: Phoneme.r),

  //w
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.w,
      diacritic: Diacritic.none,
      sound: Phoneme.w),

  //h
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.h,
      diacritic: Diacritic.none,
      sound: Phoneme.h),

  //y
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.y,
      diacritic: Diacritic.none,
      sound: Phoneme.y),

  //ng
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.ng,
      diacritic: Diacritic.none,
      sound: Phoneme.ng),

  //space
  Rune(
      bIsVowel: false,
      grapheme: Grapheme.none,
      diacritic: Diacritic.none,
      sound: Phoneme.none),
];

Rune runeFromGraphemeAndDiacritic(Grapheme grapheme, Diacritic diacritic) {
  return runes.singleWhere(
      (element) =>
          element.grapheme == grapheme && element.diacritic == diacritic,
      orElse: () => runeFromPhoneme(Phoneme.none));
}

Rune runeFromPhoneme(Phoneme phoneme) {
  return runes.singleWhere((element) => element.sound == phoneme);
}
