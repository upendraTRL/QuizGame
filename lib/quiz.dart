import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';

import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Below code is 1st way to render screens.
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   //Executes only once at the time of object creation.
  //   //It should come first B4 anything else, for best practice.
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  //Below is the 2nd way
  var activeScreen = 'start-screen';

  //One way to render content conditionally(Using 'ternary' operator).
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    //3rd way of rendering the screen(Using 'if' condition).
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 105, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}