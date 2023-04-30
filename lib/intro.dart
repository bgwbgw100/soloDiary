import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:solodiary/commonStaticVariable.dart';
import 'util/customColor.dart';

class Intro extends StatelessWidget {
  var routeContext;
  var route;
  Intro({Key? key ,this.routeContext ,this.route} ) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    var fSize = mWidth > 600 ? 24.0 : 16.0;
    var date = DateTime.now();
    var toDay = DateFormat('yyyy-MM-dd').format(date);

    return
      Container(
          color: Color(CustomColor.background),

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: mHeight*0.5),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),color: Color(CustomColor.background),),
              ),
              SizedBox(
                width: mWidth*0.4,
                height: mHeight*0.1,
                child: TextButton(
                    child: Text('I\'M FREE'),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))
                        ,side: BorderSide(width: 1.0, color: Colors.blue)
                    ),
                    onPressed: () {
                      Navigator.push(
                        routeContext,
                        MaterialPageRoute(builder: (routeContext) => route),
                      );
                    }
                ),
              ),
              SizedBox(
                width: mWidth*0.4,
                height: mHeight*0.1,
                child: TextButton(
                    child: Text(toDay,style: TextStyle(fontSize: fSize))
                    ,onPressed: (){

                }),
              )
            ],
          )
      );
  }
}
