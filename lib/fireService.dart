import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:solodiary/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FireService {

  var db = FirebaseFirestore.instance;
/*  static final FireService _fireService = FireService._internal();

  factory FireService() => _fireService;

  FireService._internal();

  Future createNewChatItem(Map<String, dynamic> json) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        FirebaseFirestore.instance.collection("chat").doc();
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await documentReference.get();

    if(!documentSnapshot.exists) {
      await documentReference.set(json);
    }
  }*/
/*
  final String user;
  final String chat;
  final String date;

  FireService({
    required this.user,
    required this.chat,
    required this.date}
  );

  Map<String, dynamic> toMap(){
    final result = <String, dynamic>{};

    result.addAll({'user': user});
    result.addAll({'chat': chat});
    result.addAll({'date': date});

    return result;
  }

  factory FireService.fromMap(Map<String, dynamic> map) {
    return FireService(user: map['user'] ?? '', chat: map['chat'] ?? '', date: map['date'] ?? '');
  }
  
  String toJson() => json.encode(toMap());
  
  factory FireService.fromJson(String source) => FireService.fromJson(json.decode(source));
*/

  void readData(){
    final collectionsReference = FirebaseFirestore.instance.collection("OneDayList").doc("KTjU2bqN5DulsuEE2WKD");
    collectionsReference.get().then((value) => {
      print('read Data ${value.data()}')}
    );
  }


  final collectionsReference = FirebaseFirestore.instance.collection('OneDayList');



  List<Map<String, dynamic>> chatItem = [];
  // Future<void> readListData() async {
  // Future<List<String>> readListData() async {
  Future<List<Map<String, dynamic>>> readListData() async {
    QuerySnapshot querySnapshot = await collectionsReference.get();

    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();


    print('readListData  $allData');

  //  List<String> chatItem = [];
  //  List<Map<String, dynamic>> chatItem = [];
    for (var doc in allData) {
      doc = doc as Map<String, dynamic>;
      chatItem.add(doc);
    }
    print('readListData222  $chatItem');

    return chatItem;
   // return allData;
  }


/*  Future<List<FireModel>> getFireModels() async {
    CollectionReference<Map<Stirng, dynamic>> collectionReference =
        FirebaseFirestore<Map<String, dynamic>> querySnapshot =
        QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await collectionReference.orderBy("date").get();

    List<FireModel> chatItem = [];
    for (var doc in querySnapshot.docs) {
      FireModel fireModel = FireModel.fromQuerySnapshot(doc);
      chatItem.add(fireModel);
    }
    return chatItem;
  }*/


}