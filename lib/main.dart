import 'package:flutter/material.dart';
import 'package:solodiary/bottomNavigationController.dart';
import 'chatView.dart';
import 'commonStaticVariable.dart';
import 'intro.dart';
import 'homeView.dart';
import 'mainTabBarController.dart';

void main() {
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
