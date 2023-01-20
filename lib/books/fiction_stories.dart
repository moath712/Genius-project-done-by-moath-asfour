import 'package:flutter/material.dart';
import 'package:loginui/books.dart';
import 'package:loginui/books/fiction%20stories/f_story_1.dart';
import 'package:loginui/books/fiction%20stories/f_story_2.dart';
import 'package:loginui/books/fiction%20stories/f_story_3.dart';
import 'package:loginui/books/fiction%20stories/f_story_4.dart';
import 'package:loginui/books/fiction%20stories/f_story_5.dart';
import 'package:loginui/books/fiction%20stories/f_story_6.dart';
import 'package:loginui/books/islamic%20stories/i_story_1.dart';
import 'package:loginui/books/islamic%20stories/i_story_2.dart';
import 'package:loginui/books/islamic%20stories/i_story_3.dart';
import 'package:loginui/books/islamic%20stories/i_story_4.dart';
import 'package:loginui/books/islamic%20stories/i_story_5.dart';
import 'package:loginui/books/islamic%20stories/i_story_6.dart';
import 'package:loginui/classes/fadeanimation.dart';
import 'package:loginui/classes/hex_color.dart';
import 'package:loginui/classes/home.dart';
import 'package:loginui/games_page.dart';
import 'package:loginui/login.dart';
import 'package:loginui/classes/fadeanimation.dart';
import 'package:loginui/mainGame.dart';
import 'package:loginui/pin_code.dart';
import 'package:loginui/utils/color_utils.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(fiction());
}

class fiction extends StatelessWidget {
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
                builder: (BuildContext context) =>books()));
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
                return fiction_1();
              }));


            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/images/lion.png",width: 64,height: 64,),
                  Text("قصة الاسد والفأر",style: TextStyle(color: Colors.white,fontSize: 15),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return fiction_2();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/donkey.png",width: 64,height: 64,),
                  Text("قصة الحمار والتاجر",style: TextStyle(color: Colors.white,fontSize: 15),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return fiction_3();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/fox.png",width: 64,height: 64,),
                  Text("الثعلب الطماع",style: TextStyle(color: Colors.white,fontSize: 15),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return fiction_4();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/hen.png",width: 64,height: 64, ),
                  Text("قصة الدجاجة الذهبية",style: TextStyle(color: Colors.white,fontSize:15),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){

              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return fiction_5();
              }));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/giraffe.png",width: 64,height: 64,),
                  Text("قصة الزرافة الطيبة",style: TextStyle(color: Colors.white,fontSize: 15),)
                ],),
            ),

          ),
          InkWell(
            onTap: (){

              Navigator.pop(context);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return fiction_6();
              }));

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white30,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/farmer.png",width: 64,height: 64, ),
                  Text("قصة المزارع المخادع",style: TextStyle(color: Colors.white,fontSize: 15),)
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
