import 'package:flutter/material.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({
    super.key,
    required this.onPressed,
    this.data,
    required this.child,
  });

  final Function(dynamic) onPressed;
  final dynamic data;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: FloatingActionButton(
        onPressed: () => onPressed(data),
        child: child,
      ),
    );
  }
}
