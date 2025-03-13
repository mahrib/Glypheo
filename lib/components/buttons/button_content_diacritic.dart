import 'package:flutter/material.dart';

import '../../data/diacritics.dart';
import '../runes/runic_grapheme.dart';
import '../single_phoneme.dart';

class ButtonContentDiacritic extends StatelessWidget {
  const ButtonContentDiacritic({
    super.key,
    required this.diacritic,
    required this.isActive,
  });

  final Diacritic diacritic;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 20,
            height: 3,
            color: isActive ? Colors.black : Colors.transparent,
          ),
        ),
        RunicGrapheme(assetString: getDiacriticAsset(diacritic), iconScale: 4),
        SinglePhoneme(buttonString: diacritic.name)
      ],
    );
  }
}
