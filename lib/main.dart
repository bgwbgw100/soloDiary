import 'package:flutter/material.dart';
import 'chatView.dart';
import 'commonStaticVariable.dart';
import 'intro.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tabNumber = CommonStaticVariable.getInstance().getTab();
    if(tabNumber==0){
      return Intro();
    }
    return Container();
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 다양한 요소들을 배치하도록 도와주는 빈 도화지
      appBar: AppBar(
        title: Text("로그인 화면 만들기"),
      ),
      body: Center(
        child: FloatingActionButton(
          child: Icon(Icons.add_box_outlined),
          onPressed: (){
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      height: 120,
                      width: 200,
                      child: Column(
                        children: [
                          Text('로그인을 해주세요 !',),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: (){
                              },
                                  child:Image.asset('images/kakaoLogin.png',height: 40,width: 100,) ),
                              TextButton(
                                  onPressed: (){
                                  },
                                  child:Image.asset('images/googleLogin.png',height: 40,width: 100,) )
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: (){
                                  },
                                  child:Image.asset('images/facebookLogin.png',height: 50,width: 100,) ),
                              TextButton(
                                  onPressed: (){
                                  },
                                  child:Image.asset('images/naverLogin.png',height: 50,width: 100,) ),
                            ],
                          )
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        print('창꺼짐');
                      }, child:
                          Text('취소')
                      )
                    ],
                  );
                }
            );
          },
        ),
      ),
    );
  }
}

*/