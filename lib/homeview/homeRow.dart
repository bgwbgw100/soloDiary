import 'package:flutter/material.dart';
import 'package:solodiary/customColor.dart';


class HomeRow extends StatelessWidget {
  const HomeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(0, size.height*0.02, 0, 0),
              height: size.height*0.2,
              child: Center(
                child: Text('첫 번째 위젯'),
              ),
              decoration: BoxDecoration(
                color: Color(CustomColor.homeBox1),
                shape: BoxShape.circle, // 동그란 모양으로 설정

              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, size.height*0.02, 0, 0),
              height: size.height*0.2,
              decoration: BoxDecoration(
                color: Color(CustomColor.homeBox2),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text('두번째 위젯'),
              ),
            ),
          )
        ]
    );
  }
}



