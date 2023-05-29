import 'package:flutter/material.dart';
import 'package:solodiary/common/login/loginService.dart';
import 'package:solodiary/common/login/tap/widget/updateNickNamePopup.dart';

class MenuDropdownButton extends StatelessWidget {
  MenuDropdownButton(this.nickName, {Key? key}) : super(key: key);
  String nickName;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: nickName,
        items: <String>[nickName, '항목 2', '항목 3', 'logOut'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (getValue) {
          if (getValue == nickName) {
            showDialog(
              context: context,
              builder: (context) {
                return UpdateNickNamePopup();
              },
            );
          }

          if (getValue == "logOut") {
            LoginService.getInstance().logout();
          }
        });
  }
}
