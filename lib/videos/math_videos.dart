import 'package:flutter/material.dart';
import 'package:loginui/books/fiction_stories.dart';
import 'package:loginui/classes/fadeanimation.dart';
import 'package:loginui/classes/hex_color.dart';
import 'package:loginui/classes/home.dart';
import 'package:loginui/games_page.dart';
import 'package:loginui/login.dart';
import 'package:loginui/classes/fadeanimation.dart';
import 'package:loginui/mainGame.dart';
import 'package:loginui/pin_code.dart';

import 'package:flutter/material.dart';
import 'package:loginui/books/islamic_stories.dart';
import 'package:loginui/books/fiction_stories.dart';
import 'package:loginui/books/learning books.dart.';
import 'package:loginui/videos/video5.dart';
import 'package:loginui/videos/video7.dart';
import 'package:loginui/videos/video6.dart';
import 'package:loginui/videos/video8.dart';
import 'package:loginui/videos/video9.dart';
import 'package:loginui/utils/color_utils.dart';
import 'package:loginui/video_home.dart';



void main() {
  runApp(math());
}

class math extends StatelessWidget {
  Color enabled = Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genius',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
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
      ),
      body: Container(

        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [

          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video5();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/plus.png",width: 64,height: 64,),
                  Text("الجمع",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video6();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/minus.png",width: 64,height: 64,),
                  Text("الطرح",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return video7();
            }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/divide.png",width: 64,height: 64,),
                  Text("القسمة",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return video8();
            }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/close.png",width: 64,height: 64,),
                  Text("الضرب",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),


        ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}
