import 'package:flutter/material.dart';
import 'package:loginui/quiz game 2/quiz-game/screens/main_menu.dart';

void main() {
  runApp(const quiz_main_2());
}

class quiz_main_2 extends StatelessWidget {
  const quiz_main_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}
