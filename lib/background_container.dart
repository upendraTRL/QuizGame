import 'package:adv_basics/styled_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  void clickButton() {
    print("Clicked");
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          const SizedBox(height: 70),
          const StyledText(),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            child: const Text(
              "Start!",
            ),
            onPressed: () {},
          ),
          // CupertinoButton.filled(
          //   child: const Text(
          //     "Start!",
          //   ),
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
