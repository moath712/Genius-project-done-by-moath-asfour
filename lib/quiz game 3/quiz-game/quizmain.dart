import 'package:flutter/material.dart';
import 'package:loginui/quiz game 3/quiz-game/screens/main_menu.dart';

void main() {
  runApp(const quiz_main_3());
}

class quiz_main_3 extends StatelessWidget {
  const quiz_main_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}
