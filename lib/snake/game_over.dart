import 'package:loginui/games_page.dart';
import 'package:loginui/snake/game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {

  final int score;

  GameOver({
    required this.score
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('انتهت اللعبة', style: TextStyle(color: Colors.redAccent, fontSize: 50.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, shadows: [
                Shadow( // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Colors.black
                ),
                Shadow( // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Colors.black
                ),
                Shadow( // topRight
                  offset: Offset(1.5, 1.5),
                  color: Colors.black
                ),
                Shadow( // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Colors.black
                ),
              ])
            ),
            
            SizedBox(height: 50.0),

            Text(' $score: نتيجتك هي', style: TextStyle(color: Colors.white, fontSize: 20.0)),

            SizedBox(height: 50.0),

            ElevatedButton.icon(

              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.refresh, color: Colors.white, size: 30.0),
              label: Text("المحاولة مرة اخرى", style: TextStyle(color: Colors.white, fontSize: 20.0))
            ),
            ElevatedButton.icon(

                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => games_home()));
                },
                icon: Icon(Icons.refresh, color: Colors.white, size: 30.0),
                label: Text("العودة الى قائمة الالعاب", style: TextStyle(color: Colors.white, fontSize: 20.0))
            ),
          ],
        ),
      )
    );
  }
}