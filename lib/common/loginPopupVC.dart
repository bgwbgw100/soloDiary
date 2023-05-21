import 'package:flutter/material.dart';
// import 'chatView.dart';

class LoginPopupVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: Colors.white,
        height: 300,
        width: 300,
        child: Column(
          children: [
            Text('로그인을 해주세요 !',
                style: TextStyle(
                    fontFamily: 'LeferiPoint', fontWeight: FontWeight.bold)),
            Spacer(
              flex: 1,
            ),


                GestureDetector(
                    child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("/naverLogin.png"),
                              fit: BoxFit.fill),
                        )),
                    onTap: () {
                      print("you clicked me");
                    }),
            Spacer(
              flex: 1,
            ),

                GestureDetector(
                    child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("/KaKaoLoginMedium.png"),
                              fit: BoxFit.fill),
                        )),
                    onTap: () {
                      print("you clicked me");
                    }),
            Spacer(
              flex: 1,
            ),


                GestureDetector(
                    child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("/googleLogin.png"),
                              fit: BoxFit.fill),
                        )),
                    onTap: () {
                      print("you clicked me");
                    }),
            Spacer(
              flex: 1,
            ),

                GestureDetector(
                    child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("/facebookLogin.png"),
                              fit: BoxFit.fill),
                        )),
                    onTap: () {
                      print("you clicked me");
                    }),

              ],

        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              print('창꺼짐');
            },
            child: Text('취소'))
      ],
    );
  }
}
