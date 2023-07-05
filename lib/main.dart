import 'package:flutter/material.dart';

import 'package:adv_basics/background_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: BackgroundContainer(),
      ),
    ),
  );
}
