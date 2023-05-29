import 'package:flutter/material.dart';
import 'package:solodiary/util/customColor.dart';
import 'package:solodiary/util/dateUtil.dart';
import 'package:solodiary/util/inputDateUtil.dart';

class PopupWidget extends StatelessWidget {

  TextEditingController _textFormCotroller = TextEditingController();
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    String dateStr = date.year.toString() + date.month.toString()+date.day.toString();
    print(dateStr);

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
              controller: _textFormCotroller,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _textFieldController,
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
                    //MainViewService.getInstance().save();
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