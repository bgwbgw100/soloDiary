import 'package:flutter/material.dart';

class DateUtil{
  int _toDay=0;
  int _toMonth=0;
  int _year=0;
  int _lastDay=0;
  DateUtil(){
    DateTime date =DateTime.now();
    this._toDay = date.day;
    this._toMonth = date.month;
    this._year = date.year;
    this._lastDay = DateTime(date.year,date.month+1,0).day;
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
  String getLastDay(){
    return _lastDay.toString();
  }

  void reDate(){
    DateUtil();
  }

  List<String> getYearList(){
    List<String> list = [];
    for(int i = _year - 10 ; i <= _year + 10; i++)
    list.add((i).toString());
    return list;
  }
  List<String> getMonList(){
    List<String> list = [];
    for(int i = 0 ; i <= 12; i++){
      list.add(i.toString());
    }
    return list;
  }



}