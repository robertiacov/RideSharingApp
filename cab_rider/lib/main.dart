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
      appId: '1:297855924061:ios:c6de2b69b03a5be8',
      apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
      projectId: 'flutter-firebase-plugins',
      messagingSenderId: '297855924061',
      databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
    )
        : FirebaseOptions(
      appId: '1:551565578850:android:bbcbe40dfb23366719773b',
      apiKey: 'AIzaSyAlQtqNSTnd-r7fg0PJpccZ2FFWLckeoUQ',
      messagingSenderId: '297855924061',
      projectId: 'flutter-firebase-plugins',
      databaseURL: 'https://geetaxi-a5338.firebaseio.com',
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
