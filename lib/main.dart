import 'package:flutter/material.dart';
// import 'chatView.dart';


// void main() {
//   runApp(MaterialApp(
//       home: MyApp()
//   )
//   );
// }

//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class LoginPopupVC extends StatelessWidget {
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
                      color: Colors.white,
                      height: 180,
                      width: 300,
                      child: Column(
                        children: [
                          Text('로그인을 해주세요 !',style: TextStyle(fontFamily: 'LeferiPoint',fontWeight: FontWeight.bold)),
                          Spacer(flex: 1,),
                          Row(
                            children: [
                              Spacer(flex: 5,),
                              GestureDetector(
                                  child: Container(
                                      width:100,
                                      height:50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image:AssetImage("/naverLogin.png"),
                                            fit:BoxFit.fill
                                        ),
                                      )
                                  ),onTap:(){
                                print("you clicked me");
                              }
                              ),
                              Spacer(flex: 3,),
                              GestureDetector(
                                  child: Container(
                                      width:100,
                                      height:50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image:AssetImage("/KaKaoLogin.png"),
                                            fit:BoxFit.fill
                                        ),
                                      )
                                  ),onTap:(){
                                print("you clicked me");
                              }
                              ),
                              Spacer(flex: 5,),
                            ],
                          ),
                          Spacer(flex: 1,),
                          Row(
                            children: [
                              Spacer(flex: 5,),
                              GestureDetector(
                                  child: Container(
                                      width:100,
                                      height:50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image:AssetImage("/googleLogin.png"),
                                            fit:BoxFit.fill
                                        ),
                                      )
                                  ),onTap:(){
                                print("you clicked me");
                              }
                              ),
                              Spacer(flex: 3,),
                              GestureDetector(
                                  child: Container(

                                      width:100,
                                      height:50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                          color: Colors.black,
                                          image: DecorationImage(
                                              image:AssetImage("/facebookLogin.png"),
                                              fit:BoxFit.fill
                                          ),

                                      )
                                  ),onTap:(){
                                print("you clicked me");
                              }
                              ),
                              Spacer(flex: 5,),
                            ],
                          ),
                          Spacer(flex: 2,)
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
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

