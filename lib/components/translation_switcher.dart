import 'package:flutter/material.dart';

class TranslationSwitcher extends StatefulWidget {
  const TranslationSwitcher({super.key});

  @override
  State<TranslationSwitcher> createState() => _TranslationSwitcherState();
}

class _TranslationSwitcherState extends State<TranslationSwitcher> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("To"),
        Text("From"),
      ],
    );
  }
}
