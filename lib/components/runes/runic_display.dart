import 'package:flutter/material.dart';
import 'package:glyph_o_matic/components/runes/runic_word.dart';

import '../../config/ui_config.dart';
import '../../data/graphemes.dart';
import '../../data/runes_definition.dart';

class RunicDisplay extends StatelessWidget {
  const RunicDisplay({
    super.key,
    required this.runes,
    required this.showEnglish,
  });

  final List<Rune> runes;
  final bool showEnglish;

  @override
  Widget build(BuildContext context) {
    var words = combineWords(runes);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
            color: kDisplayBG,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  for (var word in words)
                    RunicWord(
                      word: word,
                      showEnglish: showEnglish,
                    )
                ],
              ),
            ),
          ),
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
