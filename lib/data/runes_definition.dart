import 'package:glyph_o_matic/data/diacritics.dart';
import 'package:glyph_o_matic/data/phonemes.dart';

import 'graphemes.dart';

class Rune {
  final bool bIsVowel;

  final Grapheme grapheme;
  final Diacritic diacritic;

  Rune({required this.bIsVowel, required this.grapheme, required this.diacritic});
}

Map<Phoneme, Rune> runes = {
  //vowels
  //a
  Phoneme.ah : Rune(bIsVowel: true, grapheme: Grapheme.a, diacritic: Diacritic.none),
  Phoneme.aah : Rune(bIsVowel: true, grapheme: Grapheme.a, diacritic: Diacritic.long),
  Phoneme.ayy : Rune(bIsVowel: true, grapheme: Grapheme.a, diacritic: Diacritic.upper),

  //e
  Phoneme.eh : Rune(bIsVowel: true, grapheme: Grapheme.e, diacritic: Diacritic.none),
  Phoneme.ehh : Rune(bIsVowel: true, grapheme: Grapheme.e, diacritic: Diacritic.long),
  Phoneme.ee : Rune(bIsVowel: true, grapheme: Grapheme.e, diacritic: Diacritic.upper),

  //i
  Phoneme.ih : Rune(bIsVowel: true, grapheme: Grapheme.i, diacritic: Diacritic.none),
  Phoneme.iyh : Rune(bIsVowel: true, grapheme: Grapheme.i, diacritic: Diacritic.long),
  Phoneme.aye : Rune(bIsVowel: true, grapheme: Grapheme.i, diacritic: Diacritic.upper),

  //o
  Phoneme.o : Rune(bIsVowel: true, grapheme: Grapheme.o, diacritic: Diacritic.none),
  Phoneme.ore : Rune(bIsVowel: true, grapheme: Grapheme.o, diacritic: Diacritic.long),
  Phoneme.ohh : Rune(bIsVowel: true, grapheme: Grapheme.o, diacritic: Diacritic.upper),

  //u
  Phoneme.u : Rune(bIsVowel: true, grapheme: Grapheme.u, diacritic: Diacritic.none),
  Phoneme.uh : Rune(bIsVowel: true, grapheme: Grapheme.u, diacritic: Diacritic.long),
  Phoneme.oo : Rune(bIsVowel: true, grapheme: Grapheme.u, diacritic: Diacritic.upper),

  //voicable consonants
  //pb
  Phoneme.p : Rune(bIsVowel: false, grapheme: Grapheme.pb, diacritic: Diacritic.none),
  Phoneme.b : Rune(bIsVowel: false, grapheme: Grapheme.pb, diacritic: Diacritic.voiced),

  //td
  Phoneme.t : Rune(bIsVowel: false, grapheme: Grapheme.td, diacritic: Diacritic.none),
  Phoneme.d : Rune(bIsVowel: false, grapheme: Grapheme.td, diacritic: Diacritic.voiced),

  //fv
  Phoneme.f : Rune(bIsVowel: false, grapheme: Grapheme.fv, diacritic: Diacritic.none),
  Phoneme.v : Rune(bIsVowel: false, grapheme: Grapheme.fv, diacritic: Diacritic.voiced),

  //sz
  Phoneme.s : Rune(bIsVowel: false, grapheme: Grapheme.sz, diacritic: Diacritic.none),
  Phoneme.z : Rune(bIsVowel: false, grapheme: Grapheme.sz, diacritic: Diacritic.voiced),

  //th
  Phoneme.th : Rune(bIsVowel: false, grapheme: Grapheme.th, diacritic: Diacritic.none),
  Phoneme.thv : Rune(bIsVowel: false, grapheme: Grapheme.th, diacritic: Diacritic.voiced),

  //ckg
  Phoneme.ck : Rune(bIsVowel: false, grapheme: Grapheme.ckg, diacritic: Diacritic.none),
  Phoneme.g : Rune(bIsVowel: false, grapheme: Grapheme.ckg, diacritic: Diacritic.voiced),

  //shzh
  Phoneme.sh : Rune(bIsVowel: false, grapheme: Grapheme.shzh, diacritic: Diacritic.none),
  Phoneme.zh : Rune(bIsVowel: false, grapheme: Grapheme.shzh, diacritic: Diacritic.voiced),

  //chj
  Phoneme.ch : Rune(bIsVowel: false, grapheme: Grapheme.chj, diacritic: Diacritic.none),
  Phoneme.j : Rune(bIsVowel: false, grapheme: Grapheme.chj, diacritic: Diacritic.voiced),

  //single consonants
  //m
  Phoneme.m : Rune(bIsVowel: false, grapheme: Grapheme.m, diacritic: Diacritic.none),

  //n
  Phoneme.n : Rune(bIsVowel: false, grapheme: Grapheme.n, diacritic: Diacritic.none),

  //l
  Phoneme.l : Rune(bIsVowel: false, grapheme: Grapheme.l, diacritic: Diacritic.none),

  //r
  Phoneme.r : Rune(bIsVowel: false, grapheme: Grapheme.r, diacritic: Diacritic.none),

  //w
  Phoneme.w : Rune(bIsVowel: false, grapheme: Grapheme.w, diacritic: Diacritic.none),

  //h
  Phoneme.h : Rune(bIsVowel: false, grapheme: Grapheme.h, diacritic: Diacritic.none),

  //y
  Phoneme.y : Rune(bIsVowel: false, grapheme: Grapheme.y, diacritic: Diacritic.none),

  //ng
  Phoneme.ng : Rune(bIsVowel: false, grapheme: Grapheme.ng, diacritic: Diacritic.none),
};

Rune runeFromGraphemeAndDiacritic(Grapheme grapheme, Diacritic diacritic)
{
  return runes.values.singleWhere((element) => element.grapheme == grapheme && element.diacritic == diacritic);
}