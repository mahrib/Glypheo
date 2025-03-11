import 'package:flutter/material.dart';

import '../../data/diacritics.dart';
import '../runes/runic_grapheme.dart';

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
        Container(
          width: 5,
          height: 5,
          color: isActive ? Colors.black : Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RunicGrapheme(assetString: getDiacriticAsset(diacritic)),
        ),
      ],
    );
  }
}
