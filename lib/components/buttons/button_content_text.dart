import 'package:flutter/material.dart';

class ButtonContentText extends StatelessWidget {
  const ButtonContentText({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(style: TextStyle(color: Colors.white), buttonText));
  }
}
