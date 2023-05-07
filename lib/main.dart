import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:solodiary/firebase_options.dart';
import 'chat/chatView.dart';
import 'intro.dart';
import 'common/mainTabBarController.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
      home: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Intro(routeContext: context,route:TabPage());


  }
}
