import 'package:flutter/material.dart';

class ButtonContentIcon extends StatelessWidget {
  const ButtonContentIcon({super.key, required this.buttonIcon});

  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Icon(color: Colors.white, buttonIcon);
  }
}
