import 'package:flutter/material.dart';
import 'package:loginui/utils/color_utils.dart';
import 'classes/home.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _locationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey,




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

      body:

      ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('الاشعارات', style: TextStyle(fontSize: 25.0,color: Colors.white)),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('الموقع', style: TextStyle(fontSize: 25.0,color: Colors.white)),
            value: _locationEnabled,
            onChanged: (value) {
              setState(() {
                _locationEnabled = value;
              });
            },
          ),
        ],
      ),

    );
  }
}
