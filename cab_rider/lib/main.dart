import 'package:cab_rider/dataproviders/appdata.dart';
import 'package:cab_rider/globalvariable.dart';
import 'package:cab_rider/mainpage.dart';
import 'package:cab_rider/loginpage.dart';
import 'package:cab_rider/registrationpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
      appId: '',
      apiKey: '',
      projectId: 'flutter-firebase-plugins',
      messagingSenderId: '',
      databaseURL: '',
    )
        : FirebaseOptions(
      appId: '',
      apiKey: '',
      messagingSenderId: '',
      projectId: 'flutter-firebase-plugins',
      databaseURL: '',
    ),
  );

  currentFirebaseUser = await FirebaseAuth.instance.currentUser;

  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Brand-regular',
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: (currentFirebaseUser == null) ? LoginPage.id : MainPage.id,
        routes: {
          RegistrationPage.id: (context) => RegistrationPage(),
          LoginPage.id: (context) => LoginPage(),
          MainPage.id: (context)  => MainPage(),
        },
      ),
    );
  }
}
