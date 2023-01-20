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
import 'package:loginui/video_player.dart';
import 'package:loginui/videos/video1.dart';
import 'package:loginui/videos/video10.dart';
import 'package:loginui/videos/video2.dart';
import 'package:loginui/videos/video3.dart';
import 'package:loginui/videos/video4.dart';
import 'package:loginui/videos/video5.dart';
import 'package:loginui/videos/video9.dart';
import 'package:loginui/videos/video11.dart';
import 'package:loginui/videos/video12.dart';
import 'package:loginui/videos/video13.dart';
import 'package:loginui/videos/math_videos.dart';
import 'package:loginui/utils/color_utils.dart';



void main() {
  runApp(videos());
}

class videos extends StatelessWidget {
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
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {

            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => home()));
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
                return video1();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/arabic.png",width: 64,height: 64,),
                  Text("الاحرف الابجدية العربية",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video2();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/blocks.png",width: 64,height: 64,),
                  Text("الاحرف الانجليزية",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video3();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/bismillah.png",width: 64,height: 64,),
                  Text("اركان الاسلام",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video4();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/mosque.png",width: 64,height: 64,),
                  Text("اركان الايمان",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ), InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return math();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/math.png",width: 64,height: 64,),
                  Text("العمليات الحسابية",style: TextStyle(color: Colors.white,fontSize:18),)
                ],),
            ),
          ), InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video9();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/eye.png",width: 64,height: 64,),
                  Text("الحواس الخمسة",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ), InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video10();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/jordan.png",width: 64,height: 64,),
                  Text("معلومات عن بلدي",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ), InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video11();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/colors.png",width: 64,height: 64,),
                  Text("الالوان",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ), InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video12();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/animals.png",width: 64,height: 64,),
                  Text("الحيوانات",style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
            ),
          ), InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return video13();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/tomato.png",width: 64,height: 64,),
                  Text("الخضراوات والفواكة",style: TextStyle(color: Colors.white,fontSize: 18),)
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
