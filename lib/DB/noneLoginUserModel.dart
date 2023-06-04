import 'package:flutter/material.dart';

class UserNoneLogin {
  final int? id;
  final String name;
  final String title;
  final String? overview;
  final DateTime udate;
  final String wdate;

  const UserNoneLogin({ this.id, required this.name, required this.title, this.overview, required this.wdate, required this.udate});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'title':title,
      'overview': overview,
      'udate':udate.toIso8601String(),
      'wdate':wdate
    };
  }

  UserNoneLogin clone({
    int? id,
    String? name,
    String? title,
    String? overview,
    DateTime? udate,
    String? wdate
  }) {
    return UserNoneLogin(id: id ?? this.id,name: name ?? this.name, title: title ?? this.title, overview: overview ?? '정보 없음' ,wdate: wdate ?? this.wdate, udate: udate ?? this.udate);
  }



}
