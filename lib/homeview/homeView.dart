import 'package:flutter/material.dart';
import 'package:solodiary/commonStaticVariable.dart';
import 'package:solodiary/customColor.dart';
import 'homeRow.dart';
import 'package:solodiary/customColor.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (backgroundColor: Color(CustomColor.appBar),
          title:  Center( child: Text("TILTE",style: TextStyle(color: Colors.black),)),
          actions : [
            IconButton(icon: Icon(Icons.settings), onPressed: (){} )
          ]
         ),
      body: Container(
        color: Color(CustomColor.background),
        height: double.maxFinite,
        child:
            Column(children: [
              HomeRow()
              ,SizedBox()
            ],)
      )


      ,
    );
  }
}

