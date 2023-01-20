import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:loginui/video_home.dart';

class video8 extends StatefulWidget {
  @override
  _video8State createState() => _video8State();

}

class _video8State extends State<video8> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'EWqWKZYfM5s',
      flags: YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
    super.initState();


  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  builder: (BuildContext context) => videos()));
            },
          ),
          actions: [


          ],
        ),
        body: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,


        ),

      ),

    );



  }


}