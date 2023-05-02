import 'package:flutter/material.dart';
import 'package:solodiary/util/customColor.dart';
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
        decoration:
        BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Color(CustomColor.homeBox1),style: BorderStyle.solid)
        ),
        child: Center(child: Text(year)),
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
        decoration:
          BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Color(CustomColor.homeBox1),style: BorderStyle.solid)
          ),
        child: Center(child: Text(mon)) ,
      ),
    );
  }
}

class InputDay extends StatefulWidget {
  const InputDay({Key? key}) : super(key: key);

  @override
  State<InputDay> createState() => _InputDayState();
}

class _InputDayState extends State<InputDay> {
  double dayDy = 0;
  String day =DateUtil().getToDay();
  int lastDay = int.parse(DateUtil().getLastDay()) ;


  void _strDay(int day){
    if(day <= 0){
      this.day = lastDay.toString();
      return;
    }
    if(day <10){
      this.day = "0"+day.toString();
      return;
    }
    if(day > lastDay){
      this.day = "01";
      return;
    }
    this.day = day.toString();
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onVerticalDragUpdate: (details) {
        dayDy += details.delta.dy;


        if(dayDy <-35 ){
          dayDy =0;
          setState(() {
            _strDay(int.parse(day)-1);
          });
        }
        if(dayDy >35 ){
          dayDy =0;
          setState(() {
            _strDay(int.parse(day)+1);
          });


        }
      },
      child: Container(
        decoration:
        BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Color(CustomColor.homeBox1),style: BorderStyle.solid)
        ),
        child: Center(child: Text(day)) ,
      ),
    );
  }
}





