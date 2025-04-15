import 'package:flutter/material.dart';
import 'theme_extensions.dart';

class Messages {
  final BuildContext context;

  Messages._(this.context);

  factory Messages.of(BuildContext context) {
    return Messages._(context);
  }

  void _showMessage(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  void showError(String message) => _showMessage(message, Colors.red);

  void info(String message) => _showMessage(message, context.primaryColor);
}
