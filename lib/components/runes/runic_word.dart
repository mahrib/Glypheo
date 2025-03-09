import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/english_display.dart';
import 'package:glyph_o_matic/components/runes/runic_pair.dart';
import 'package:glyph_o_matic/components/runes/runic_strikethrough.dart';
import 'package:glyph_o_matic/data/runes_definition.dart';

class RunicWord extends StatelessWidget {
  const RunicWord({super.key, required this.word});

  final RuneWord word;

  @override
  Widget build(BuildContext context) {
    var combinedPairs = combinePairs(word);

    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          RunicStrikethrough(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Row(
              children: [
                for (var pair in combinedPairs) RunicPair(runePair: pair),
              ],
            ),
          ),
        ]),
        SizedBox(height: 16),
        EnglishDisplay(word: word)
      ],
    );
  }
}

List<RunePair> combinePairs(RuneWord word) {
  int index = 0;

  var runes = word.runes;
  List<RunePair> pairs = [];

  while (index < runes.length) {
    if (index < runes.length - 1 &&
        !runes[index].bIsVowel &&
        runes[index + 1].bIsVowel) {
      pairs.add(RunePair(first: runes[index], second: runes[index + 1]));
      index += 2;
    } else if (!runes[index].bIsVowel) {
      pairs.add(RunePair(first: runes[index]));
      index += 1;
    } else if (runes[index].bIsVowel) {
      pairs.add(RunePair(second: runes[index]));
      index += 1;
    }
  }

  return pairs;
}
