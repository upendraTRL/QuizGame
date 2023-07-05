import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      "Learn Flutter The Fun Way",
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
