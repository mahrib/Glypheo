import 'dart:math';

import 'package:flutter/material.dart';

import '../../config/ui_config.dart';
import '../../data/keyboard_definition.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({
    super.key,
    required this.onPressed,
    this.data,
    required this.type,
    required this.child,
  });

  final Function(dynamic) onPressed;
  final dynamic data;
  final KeyboardButtonType type;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = min(screenWidth / 150, kButtonPadding);
    final double height = min(screenWidth / 6, 120);
    final String bg = getButtonBG(type);

    return SizedBox(
      height: height,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bg),
              centerSlice: Rect.fromLTRB(10, 10, 20, 20),
              fit: BoxFit.fill,
            ),
          ),
          child: InkResponse(
            onTap: () => onPressed(data),
            child: child,
          ),
        ),
      ),
    );
  }
}
