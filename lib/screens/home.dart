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
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                height: 300,
                color: Colors.green,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 300,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 300,
                color: Colors.red,
              ),
              SizedBox(
                height: 5,
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Done and Continue"),
                color: Colors.blue[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              )
            ],
          ),
        ));
  }
}
