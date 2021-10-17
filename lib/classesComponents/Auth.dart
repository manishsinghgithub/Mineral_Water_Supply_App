import 'package:flutter/material.dart';
import 'package:minaral_water/screens/home.dart';
import 'package:minaral_water/screens/signIn.dart';
import 'package:minaral_water/services/userCreation.dart';
import 'package:provider/provider.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);
    //either auth or home page.
    if (user.uid == null) {
      print(user.uid);
      return SignIn();
    } else {
      return HomePage();
    }
  }
}
