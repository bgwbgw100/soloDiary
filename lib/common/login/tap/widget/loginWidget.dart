import 'package:flutter/material.dart';
import 'package:solodiary/common/loginPopupVC.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return LoginPopupVC();
          },
        );
      },
      child: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Colors.brown, style: BorderStyle.solid),
        ),
        child: Text(
          "로그인",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
