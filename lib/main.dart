import 'package:flutter/material.dart';
import 'chat/chatView.dart';
import 'intro.dart';
import 'common/mainTabBarController.dart';

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
