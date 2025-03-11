import 'package:flutter/material.dart';

import '../../data/diacritics.dart';
import '../runes/runic_grapheme.dart';

class ButtonContentDiacritic extends StatelessWidget {
  const ButtonContentDiacritic({super.key, required this.diacritic});

  final Diacritic diacritic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RunicGrapheme(assetString: getDiacriticAsset(diacritic)),
    );
  }
}
