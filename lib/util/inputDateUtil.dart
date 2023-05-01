import 'package:flutter/material.dart';
import 'dateUtil.dart';

class InputYear extends StatefulWidget {
  const InputYear({Key? key}) : super(key: key);

  @override
  State<InputYear> createState() => _InputYearState();
}

class _InputYearState extends State<InputYear> {
  double yearDy = 0;
  String year = DateUtil().getYear();
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onVerticalDragUpdate: (details) {
        yearDy += details.delta.dy;
        if(yearDy <-35 ){
          yearDy =0;
          year = (int.parse(year)-1).toString();
          setState(() {
            year;
          });
        }
        if(yearDy >35 ){
          yearDy =0;
          year = (int.parse(year)+1).toString();
          setState(() {
            year;
          });
        }
      },
      child: Container(
        width: 100,
        height: 100,
        child: Text(year),
      ),
    );
  }
}
class InputMon extends StatefulWidget {
  const InputMon({Key? key}) : super(key: key);

  @override
  State<InputMon> createState() => _InputMonState();
}

class _InputMonState extends State<InputMon> {
  double monDy = 0;
  String mon = DateUtil().getMonth();

  void _strMon(int mon){
    if(mon <= 0){
      this.mon = "12";
      return;
    }
    if(mon <10){
       this.mon = "0"+mon.toString();
       return;
    }
    if(mon > 12){
       this.mon = "01";
      return;
    }
    this.mon = mon.toString();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        monDy += details.delta.dy;


        if(monDy <-35 ){
          monDy =0;
          setState(() {
            _strMon(int.parse(mon)-1);
          });
        }
        if(monDy >35 ){
          monDy =0;
          setState(() {
            _strMon(int.parse(mon)+1);
          });


        }
      },
      child: Container(
        width: 100,
        height: 100,
        child: Text(mon),
      ),
    );
  }
}




