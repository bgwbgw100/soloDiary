import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:solodiary/firebase_options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatItem extends ChangeNotifier {
  var chatItemList = <String>["mmmm"];


  String _chat = "";
  String _user = "";
  String _date = "";

  List<String> _chatItemList = <String>[];

  fireBase(){

  }
/*  List<String>? getChatItemList(){
    //firebase 가져오기

    print("chatItem getChatItemlist");
    chatItemList.add("poipoipio");
    //임시
    return chatItemList;
  }*/

  setChat(String chat){
    _chat = chat;
    notifyListeners();

  }

  setChatItem(String chat){
    chatItemList.add(chat);
    notifyListeners();
  }

  setUser(String user){
    _user = user;
    notifyListeners();

  }

  setDate(String date){
    _date = date;
    notifyListeners();

  }

  String? getChat(){
    return _chat.toString();
  }

  String? getUser(){
    return _user.toString();
  }

  String? getDate(){
    return _date.toString();
  }
}