import 'package:flutter/material.dart';

class SinglePhoneme extends StatelessWidget {
  const SinglePhoneme({
    super.key,
    required this.buttonString,
  });

  final String buttonString;

  @override
  Widget build(BuildContext context) {
    if (buttonString == "none") {
      return Text("");
    }
    return Text(
      buttonString,
      style: TextStyle(color: Color(0xFF1689a7), fontWeight: FontWeight.bold),
    );
  }
}
