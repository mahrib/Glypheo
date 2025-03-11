import 'package:flutter/material.dart';

import '../../data/keyboard_definition.dart';
import '../../ui_config.dart';

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
      padding: const EdgeInsets.all(12),
      child: FloatingActionButton(
        backgroundColor: color,
        onPressed: () => onPressed(data),
        child: child,
      ),
    );
  }
}
