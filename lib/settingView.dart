import 'package:flutter/material.dart';
import 'package:solodiary/loginPopupVC.dart';


class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("설정")),
      body: Center(
        child: settingListView()
    )
    );
  }
}

Widget settingListView() {
  final List<String> entries = <String>['로그인','푸시 알람 받기','문의하기'];
  final List<int> colorCodes = <int>[600,500,100,200];

  return ListView.builder(
      padding:const EdgeInsets.all(8),
      itemCount:entries.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
            height: 50,
            color: Colors.black,
            child:Row(
              children: [
                TextButton(onPressed: (){
                  if ( index == 0 ) {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPopupVC()));
                    showDialog(context: context,
                               barrierDismissible: true,
                               builder: (BuildContext context) {
                                return LoginPopupVC();
                    }

                    );
                  }
                }, child: Text(entries[index],style: TextStyle(color: Colors.white),),),
              ],
            )
        );
      }
  );
}

