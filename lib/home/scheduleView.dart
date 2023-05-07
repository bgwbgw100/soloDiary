
import 'package:flutter/material.dart';
import 'package:solodiary/home/homePopup.dart';
import 'package:solodiary/util/customColor.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount:54,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  //한 개 행에 보여줄 item 개수
        childAspectRatio: 1 / 1,  //item 의 가로 세로 비율
        mainAxisSpacing: 10,  //수평 padding
        crossAxisSpacing: 10,  //수직 padding
      ),
      itemBuilder: (c, i) {
        return  Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
              color: Color(CustomColor.background),
              border: Border(),
              shape: BoxShape.circle,
              //    borderRadius: BorderRadius.circular(200),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xffbbcde3),
                    blurRadius: 5,
                    offset: Offset(0, 5)
                ),
                BoxShadow(
                    color: Color(0xffbbcde3),
                    blurRadius: 15,
                    offset: Offset(-5, 0)
                ),
              ]
          ),
          child: ListTile(
            title: Text('schedule', textAlign: TextAlign.start, style: TextStyle(fontSize: 12),),
            onTap: (){
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
          ),
        );
      },
      /*    itemBuilder: (c, i){
      return Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          color: Color(0xfffefae0),
          border: Border(),
          borderRadius: BorderRadius.circular(50),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffbbcde3),
              blurRadius: 5,
              offset: Offset(0, 5)
            ),
            BoxShadow(
              color: Color(0xffbbcde3),
              blurRadius: 15,
              offset: Offset(-5, 0)
            ),
          ]
        ),
        child: ListTile(
          title: Text('schedule', textAlign: TextAlign.start, style: TextStyle(fontSize: 12),),
          onTap: (){
            print('schedule click');
          },
        ),
      );
        }*/
    );
  }
}
