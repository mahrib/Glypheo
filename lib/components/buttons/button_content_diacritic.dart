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
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 20,
          height: 3,
          color: isActive ? Colors.black : Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RunicGrapheme(assetString: getDiacriticAsset(diacritic)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: SinglePhoneme(buttonString: diacritic.name),
        )
      ],
    );
  }
}
