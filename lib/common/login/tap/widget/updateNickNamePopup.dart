import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:solodiary/common/login/LoginProvider.dart';
import 'package:solodiary/util/customColor.dart';

class UpdateNickNamePopup extends StatelessWidget {
  const UpdateNickNamePopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Dialog(

      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("기념일",style: TextStyle(height: 0)),

            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('취소'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('저장'),
                  onPressed: () async {
                    await FirebaseAuth.instance.currentUser?.updateDisplayName(_controller.text);
                    LoginProvider.getInstance().logoutSetProvider();
                    LoginProvider.getInstance().loginSetProvider();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
