import 'package:flutter/material.dart';
import 'package:freegame/pages/home.dart';
import 'package:freegame/train/firbasetrain.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/exc',
    routes: {
      '/': (context) => Home(),
      // '/register': (context) => Register(),
      // '/feed': (context) => Feed(),
      // '/login': (context) => Login(),
      '/exc': (context) => Trainfirbase(),
    },
  ));
}
