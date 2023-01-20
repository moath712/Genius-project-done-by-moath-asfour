import 'package:flutter/material.dart';
import 'package:loginui/quiz game/quiz-game/screens/main_menu.dart';

void main() {
  runApp(const quiz_main());
}

class quiz_main extends StatelessWidget {
  const quiz_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}
