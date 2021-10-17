import 'package:flutter/material.dart';
import 'package:minaral_water/components/waterCard.dart';
import 'package:minaral_water/screens/detailsForms.dart';
import 'package:minaral_water/screens/profile.dart';
import 'package:minaral_water/services/FireBaseAuth.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CardData _cardData = CardData();
    int amount = 0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          elevation: 0,
          leading: Icon(Icons.home),
          title: Text("Home"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                icon: Icon(Icons.person)),
            IconButton(
                onPressed: () async {
                  await AuthServices().signOut();
                },
                icon: Icon(Icons.logout)),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardData(
                  path: 'image/1stjar.png',
                  heading: "SILVER PACK",
                  statement:
                      "This pack contains only pure mineral water of volume 20L",
                  pr: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                CardData(
                  path: 'image/2ndjar.png',
                  heading: 'GOLD PACK',
                  statement:
                      'This pack contains child pure water of volume 20L',
                  pr: 40,
                ),
                SizedBox(
                  height: 5,
                ),
                CardData(
                  path: 'image/3jar.png',
                  heading: 'PLATINUM PACK',
                  statement:
                      'This pack contains child and sweet pure water of volume 20L',
                  pr: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsForms()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Done and Continue",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
