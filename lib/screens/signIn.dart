import 'package:flutter/material.dart';
import 'package:minaral_water/constant/constant.dart';
import 'package:minaral_water/screens/signUp.dart';
import 'package:minaral_water/services/FireBaseAuth.dart';

class SignIn extends StatelessWidget {
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Text(
                    "जल ही जीवन है!",
                    style: TextStyle(
                      fontFamily: 'Kalam',
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue[300],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 25, color: Colors.blue[300]),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "*Sign In to book your minral water.*",
                    style: TextStyle(color: Colors.blue[400]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: kTextfielddecoration,
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration:
                        kTextfielddecoration.copyWith(hintText: "Password"),
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () async {
                      await AuthServices()
                          .signInEmail(email.toString(), password.toString());
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    color: Colors.blue[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Text(
                    'or having no account',
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    hoverColor: Colors.blue[100],
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.blue[300]),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset(
                  'image/onlywater.png',
                ),
                Image.asset(
                  'image/welcome.png',
                  height: 250,
                ),
                Text(
                  "We supply pure and chilled minral water at affordable price. We aslo provide sevices in all type of function.",
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
