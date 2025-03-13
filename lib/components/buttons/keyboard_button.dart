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
    Color color = getButtonColor(type);

    return Padding(
      padding: const EdgeInsets.all(kButtonPadding),
      child: SizedBox(
        width: 70,
        height: 100,
        child: InkResponse(
          onTap: () => onPressed(data),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: color.withValues(alpha: 0.5),
                  spreadRadius: 0,
                  blurRadius: 5,
                ),
              ],            ),
            child: Card(
              margin: EdgeInsets.all(3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              color: color,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
