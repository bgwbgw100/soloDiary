import 'package:flutter/material.dart';
import 'commonStaticVariable.dart';
import 'homeView.dart';
import 'chatView.dart';

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  State<BottomNavigationController> createState() => _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
  @override
  Widget build(BuildContext context) {
    int tabNumber = CommonStaticVariable.getInstance().getTab();

    return Scaffold(
      body: HomeView(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (i){
          setState(() {
            if(i == 0) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
            } else if(i == 1){
              Navigator.push(context, MaterialPageRoute(builder: (context) => OneDay()));

            }
          });
        }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'calendar'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outlined), label: 'chat')
      ],
      ),
    );
  }
}
