import 'package:flutter/material.dart';

import '../data/diacritics.dart';
import 'runes/runic_grapheme.dart';

class DiacriticButton extends StatelessWidget {
  const DiacriticButton({super.key, required this.diacritic});

  final Diacritic diacritic;

  @override
  Widget build(BuildContext context) {
    return RunicGrapheme(assetString: getDiacriticAsset(diacritic));
  }
}
