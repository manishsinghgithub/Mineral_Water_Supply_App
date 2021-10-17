import 'package:flutter/material.dart';
import 'package:minaral_water/classesComponents/Auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:minaral_water/services/FireBaseAuth.dart';
import 'package:minaral_water/services/userCreation.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser>.value(
      value: AuthServices().user,
      initialData: MyUser.initialData(),
      child: MaterialApp(
        home: Auth(),
      ),
    );
  }
}
