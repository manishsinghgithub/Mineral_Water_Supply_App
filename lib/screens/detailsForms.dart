import 'package:flutter/material.dart';
import 'package:minaral_water/constant/constant.dart';
import 'package:minaral_water/screens/home.dart';

class DetailsForms extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Enter Your Name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: kTextfielddecoration.copyWith(
                    hintText: "Name",
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your Contact Number",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration:
                      kTextfielddecoration.copyWith(hintText: "Contact"),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Complete Address",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration:
                      kTextfielddecoration.copyWith(hintText: "Address."),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => HomePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
