import 'package:loginui/games_page.dart';
import 'package:loginui/snake/game_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => games_home()));
            },
          ),
        ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/snake.png'),

            SizedBox(height: 50.0),

            Text('لعبة الافعى ', style: TextStyle(color: Colors.white, fontSize: 40.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold), textAlign: TextAlign.center),

            SizedBox(height: 50.0),
            ElevatedButton.icon(

                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()));
                },
                icon: Icon(Icons.play_circle_filled, color: Colors.white, size: 30.0),
                label: Text("ابدأ اللعبة"),
            )



          ],

        ),

      )

    );

  }
}