import 'package:flutter/material.dart';
import 'package:solodiary/home/scheduleView.dart';
import 'package:solodiary/util/customColor.dart';

class HomeBackGround extends StatefulWidget {
  const HomeBackGround({Key? key}) : super(key: key);

  @override
  State<HomeBackGround> createState() => _HomeBackGroundState();
}

class _HomeBackGroundState extends State<HomeBackGround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(CustomColor.background),
        child: ScheduleView(),
      ),
    );
  }
}