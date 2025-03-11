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
      child: SizedBox(
        width: 70,
        height: 100,
        child: InkResponse(
          onTap: () => onPressed(data),
          child: Card(
            color: color,
            child: child,
          ),
        ),
      ),
    );
  }
}
