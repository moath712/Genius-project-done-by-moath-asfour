import 'package:flutter/material.dart';
import 'package:loginui/quiz game 5/quiz-game/screens/main_menu.dart';

void main() {
  runApp(const quiz_main_5());
}

class quiz_main_5 extends StatelessWidget {
  const quiz_main_5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}
