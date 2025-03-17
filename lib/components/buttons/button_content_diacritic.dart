import 'package:flutter/material.dart';

import '../../data/diacritics.dart';
import '../runes/runic_grapheme.dart';
import '../single_phoneme.dart';

class ButtonContentDiacritic extends StatelessWidget {
  const ButtonContentDiacritic({
    super.key,
    required this.diacritic,
    required this.isActive,
    required this.showEnglish,
  });

  final Diacritic diacritic;
  final bool isActive;
  final bool showEnglish;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 20,
              height: 3,
              color: isActive ? Color(0xFF1689a7) : Colors.transparent,
            ),
          ),
          RunicGrapheme(
              assetString: getDiacriticAsset(diacritic), iconScale: 4),
          if(showEnglish)
          SinglePhoneme(buttonString: diacritic.name)
        ],
      ),
    );
  }
}
