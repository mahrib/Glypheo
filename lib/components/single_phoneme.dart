import 'package:flutter/material.dart';

import '../data/diacritics.dart';
import '../data/graphemes.dart';
import '../data/runes_definition.dart';

class SinglePhoneme extends StatelessWidget {
  const SinglePhoneme({super.key, required this.rune});

  final Rune rune;

  @override
  Widget build(BuildContext context) {
    if(rune.grapheme == Grapheme.none && rune.diacritic == Diacritic.none)
      {
        return Text("");
      }
    if(rune.grapheme == Grapheme.none)
      {
        return Text(rune.diacritic.name);
      }
    return Text(getRuneName(rune));
  }
}

String getRuneName(Rune rune)
{
  if(rune.grapheme == Grapheme.none)
    {
      return " ";
    }

  return rune.sound.name;
}