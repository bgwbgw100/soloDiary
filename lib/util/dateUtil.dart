import 'dart:ffi';

import 'package:flutter/material.dart';

class DateUtil{
  int _toDay=0;
  int _toMonth=0;
  int _year=0;
  DateUtil(){
    DateTime date =DateTime.now();
    this._toDay = date.day;
    this._toMonth = date.month;
    this._year = date.year;
  }

  String getToDay(){
    if(_toDay<10){
      return "0"+_toDay.toString();
    }
    return _toDay.toString();
  }

  String getMonth(){
    if(_toMonth<10){
      return "0"+_toMonth.toString();
    }
    return _toMonth.toString();
  }

  String getYear(){
    return _year.toString();
  }

  void reDate(){
    DateUtil();
  }
/*
  List<String> getYearList(){
    List<String> list = List;
    yearList.add((_year-10).toString());


  }*/


}