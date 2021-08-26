import 'package:flutter/material.dart';
import 'package:minaral_water/screens/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 0,
        leading: Icon(Icons.home),
        title: Text("Home"),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Icon(
                Icons.person,
                color: Colors.white,
              )),
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.logout,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
