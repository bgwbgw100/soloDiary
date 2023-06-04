import 'package:flutter/material.dart';
import 'package:solodiary/home/homeBackGround.dart';
import 'package:solodiary/home/homePopup.dart';
import 'package:solodiary/common/settingView.dart';
import 'package:solodiary/util/customColor.dart';
import 'package:solodiary/util/inputDateUtil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('test');
          showGeneralDialog(
            context: context,
            barrierColor: Colors.black.withOpacity(0.5),
            barrierDismissible: true,
            barrierLabel: "ads" ,
            transitionDuration: Duration(milliseconds: 200),
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return HomePopup();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: HomeBackGround(),
    );
  }
}


