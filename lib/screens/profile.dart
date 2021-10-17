import 'package:flutter/material.dart';
import 'package:minaral_water/screens/detailsForms.dart';
import 'package:minaral_water/services/FireBaseAuth.dart';
import 'package:minaral_water/services/userCreation.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "Manish Singh", address = "", mobile = "";
  String? url = "https://www.woolha.com/media/2020/03/eevee.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue[300],
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsForms()));
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            Container(
              height: 200,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(
                    image: ExactAssetImage('image/class2.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  url.toString(),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Name: " + name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Contact Info",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  mobile,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  address,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
          Text(
              "Note : To edit your detail click on edit button in top-righ corner.")
        ],
      )),
    );
  }
}
