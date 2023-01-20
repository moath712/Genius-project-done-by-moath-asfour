import 'package:flutter/material.dart';
import 'package:loginui/books.dart';
import 'package:loginui/classes/fadeanimation.dart';
import 'package:loginui/classes/hex_color.dart';
import 'package:loginui/contact%20us.dart';
import 'package:loginui/games_page.dart';
import 'package:loginui/login.dart';
import 'package:loginui/classes/fadeanimation.dart';
import 'package:loginui/mainGame.dart';
import 'package:loginui/pin_code.dart';
import 'package:loginui/video_home.dart';

import 'package:flutter/material.dart';
import 'package:loginui/video_player.dart';
import 'package:loginui/utils/color_utils.dart';

import '../points.dart';
import '../profile.dart';
import '../settings.dart';


void main() {
  runApp(home());
}

class home extends StatelessWidget {
  Color enabled = Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.blue;
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
                return SettingsUI();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                 Image.asset("assets/images/boy.png",width: 64,height: 64,),
                  Text("حسابك الشخصي",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return games_home();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/videogames.png",width: 64,height: 64,),
                  Text("الالعاب والمسابقات",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return points();

              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/hand-gesture.png",width: 64,height: 64,),
                  Text("نقاطي",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return books();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/read.png",width: 64,height: 64, ),
                  Text("كتب تعليمية",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){

              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return SettingsScreen();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/settings.png",width: 64,height: 64,),
                  Text("الاعدادات",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),

          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return videos();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/multimedia.png",width: 64,height: 64, ),
                  Text("فيديوهات تعليمية",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return SignInScreen();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/shutdown.png",width: 64,height: 64,),
                  Text("تسجيل الخروج",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){

              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return aboutus();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/man.png",width: 64,height: 64,),
                  Text("عن التطبيق",style: TextStyle(color: Colors.white,fontSize: 30),)
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
