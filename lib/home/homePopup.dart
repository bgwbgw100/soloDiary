import 'package:flutter/material.dart';
import 'package:solodiary/util/customColor.dart';
import 'package:solodiary/util/inputDateUtil.dart';

class HomePopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            Row(
              children: <Widget>[
                Expanded(child: Center(child: InputYear()),flex: 3),
                Expanded(child: Center(child: InputMon()) ,flex: 2,),
                Expanded(child: Center(child: InputDay()) ,flex: 2,),
                Expanded(child: SizedBox(),flex: 8,),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: '할일',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                fillColor: Color(CustomColor.background),
                filled: true,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    // Perform action on OK button press
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