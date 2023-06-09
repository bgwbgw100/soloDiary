import 'package:flutter/material.dart';
import 'package:solodiary/common/login/loginService.dart';
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
                              image: AssetImage("assets/naverLogin.png"),
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
                              image: AssetImage("assets/kakaoLoginMedium.png"),
                              fit: BoxFit.fill),
                        )),
                    onTap: () {
                      Navigator.pop(context);
                      LoginService loginService = LoginService.getInstance();
                      loginService.login(loginService.kakaoLogin);

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
                              image: AssetImage("assets/googleLogin.png"),
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
                              image: AssetImage("assets/facebookLogin.png"),
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
