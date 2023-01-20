import 'package:flutter/material.dart';
import 'package:loginui/settings.dart';
import 'package:loginui/reusable_widgets/reusable_widget.dart';

import 'classes/home.dart';
import 'games_page.dart';
import 'package:loginui/utils/color_utils.dart';

class aboutus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {


  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _locationTextController = TextEditingController();


  bool showPassword = false;
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
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/logo1.png", height: 200.0),
            Text("About Us", style: TextStyle(fontSize: 25.0,color: Colors.white)),
            SizedBox(height: 20.0),
            Text("Genius is an educational app for kids that utilizes games and puzzles to help them learn. Our goal is to make learning fun and interactive for children, and we believe that our app can be a valuable tool for parents and educators. We are constantly updating our content to ensure that the app stays relevant and interesting for kids of all ages. Thank you for choosing Genius!",style: TextStyle(fontSize: 15.0,color: Colors.white)),
            SizedBox(height: 20.0),
            Text("- The Genius Team",style: TextStyle(fontSize: 15.0,color: Colors.white)),
            SizedBox(height:40.0),
            Text("عن التطبيق", style: TextStyle(fontSize: 25.0,color: Colors.white)),
            SizedBox(height: 20.0),
            Text(" عبقري هو تطبيق تعليمي للأطفال يستخدم الألعاب والألغاز لمساعدتهم على التعلم. هدفنا هو جعل التعلم ممتعًا وتفاعليًا للأطفال ، ونعتقد أن تطبيقنا يمكن أن يكون أداة قيمة للآباء والمعلمين. نقوم باستمرار بتحديث المحتوى الخاص بنا لضمان بقاء التطبيق ملائمًا وممتعًا للأطفال من جميع الأعمار. شكرًا لاختيارك عبقري!",style: TextStyle(fontSize: 15.0,color: Colors.white)),
            SizedBox(height: 20.0),
            Text("- فريق عبقري",style: TextStyle(fontSize: 15.0,color: Colors.white)),
          ],
        ),
      ),
    );
  }



  }

