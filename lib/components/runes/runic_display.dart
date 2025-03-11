import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_word.dart';

import '../../data/graphemes.dart';
import '../../data/runes_definition.dart';

class RunicDisplay extends StatelessWidget {
  const RunicDisplay({super.key, required this.runes});

  final List<Rune> runes;

  @override
  Widget build(BuildContext context) {
    var words = combineWords(runes);

    return Container(
      height: 150,
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [for (var word in words) RunicWord(word: word)],
        ),
      ),
    );
  }
}

List<RuneWord> combineWords(List<Rune> runes) {
  List<RuneWord> words = [];

  int wordStart = 0;
  int wordEnd = 0;

  for (int i = 0; i < runes.length; i++) {
    if (i == runes.length - 1) {
      var word = RuneWord(runes: runes.sublist(wordStart));
      word.trimWord();
      words.add(word);
      break;
    }

    if (runes[i].grapheme == Grapheme.none || i == runes.length - 1) {
      wordEnd = i;
      var word = RuneWord(runes: runes.sublist(wordStart, wordEnd));
      word.trimWord();
      words.add(word);

      wordStart = i + 1;
    }
  }
  return words;
}
