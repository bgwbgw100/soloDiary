import 'package:flutter/material.dart';

class OneDay extends StatefulWidget {
  const OneDay({super.key});

  @override
  State<OneDay> createState() => _OneDayState();
}

class _OneDayState extends State<OneDay> {
  // This widget is the root of your application.

  var tab = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*    appBar: AppBar(
        backgroundColor: Color(0xffccadde),
      ),*/
      //  body:ChatView(),
      //  body:BackGround(),
      body:Stack(
        children: <Widget>[
          BackTwo(),
          BackGround(),
        ],

      ),
      // body: BackTwo(),
/*      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (i){
          setState(() {
            tab = i;
          });
        }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'calendar'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outlined), label: 'chat')
      ],
      ),*/
    );
  }
}

class BackTwo extends StatefulWidget {
  const BackTwo({Key? key}) : super(key: key);

  @override
  State<BackTwo> createState() => _BackTwoState();
}

class _BackTwoState extends State<BackTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xfffefae0),
                  // height: 500,
                )
            ),

            Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xfff8f9fb),
                  // height: 200,
                ))
          ]

      ),
    );
  }
}


class BackGround extends StatefulWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    return Container(
      /*       decoration: BoxDecoration(
            gradient: LinearGradient(
              // colors: [Color(0xffcdb4db),Color(0xffffafcc),Color(0xffffc8dd),Color(0xffbde0fe),Color(0xffa2d2ff)],
              //  colors: [Color(0xff03045e),Color(0xff0077b6),Color(0xff00b4d8),Color(0xff90e0ef),Color(0xffcaf0f8)],
              //   colors: [Color(0xff735d78),Color(0xffb392ac),Color(0xffd1b3c4),Color(0xffe8c2ca),Color(0xfff7d1cd)],
              //   colors: [Color(0xffabc4ff),Color(0xffb6ccfe),Color(0xffccdbfd),Color(0xffd7e3fc),Color(0xffedf2fb)],
              //  colors: [Color(0xff71a5de),Color(0xff83b0e1),Color(0xffaecbeb),Color(0xffe1ecf7),Color(0xfff8f9fb)],
              //    colors: [Color(0xffcdb4db),Color(0xffffafcc),Color(0xffffc8dd),Color(0xffbde0fe),Color(0xffa2d2ff),Color(0xff71a5de),Color(0xff83b0e1),Color(0xffaecbeb),Color(0xffe1ecf7),Color(0xfff8f9fb)],
           //   colors: [Color(0xffcdb4db),Color(0xffffafcc),Color(0xffffc8dd),Color(0xffbde0fe),Color(0xffa2d2ff),Color(0xffe1ecf7),Color(0xfff8f9fb)],
              colors: [Color(0xffffafcc), Color(0xffffffff)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0,0.3,0.5,0.7,1]
              //   stops: [0,0.2,0.4,0.6,1]
              // stops: [0,0.2,0.4,0.6,0.7,0.75,0.8,0.85,0.9,1]
              stops: [0,0.5]
            )
        ),*/
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin:  EdgeInsets.fromLTRB(20, 20, 20, 0),
                  padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.topLeft,
                  child: Text('하루한말', textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
                  shadows: [Shadow(
                    blurRadius: 2,
                    color: Colors.grey,
                    offset: Offset(2,2)
                  )

                  ]),),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin:  EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding:  EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.topLeft,
                  child: Text('하루한말을 공유해주세요!', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200,color: Color(
                      0xff3a3a3a)),),
                )),
            Expanded(
                flex: 10,
                child: RoundBorder()),
            Container(
              margin: EdgeInsets.all(0),
              height: 60,
              child: InputField(),
            )
          ],
        )
    );
  }
}

class RoundBorder extends StatefulWidget {
  const RoundBorder({Key? key}) : super(key: key);


  @override
  State<RoundBorder> createState() => _RoundBorderState();
}

class _RoundBorderState extends State<RoundBorder> {
  @override
  Widget build(BuildContext context) {

    print("asdf");

    return Container(
      margin:  EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding:  EdgeInsets.fromLTRB(20, 30, 20, 0),
      decoration: BoxDecoration(
        // color: Color(0xfff8f9fb),
          color: Color(0xffffffff),
          border: Border(),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
          )
      ),
      child: ChatView(),
    );
  }
}



class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);


  @override
  State<ChatView> createState() => _ChatViewState();


}

class _ChatViewState extends State<ChatView> {

  var scroll = ScrollController();


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 3,
        itemBuilder: (c, i){
          return Container(
            width: 650,
            height: 50,

            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border(),
                borderRadius: BorderRadius.circular(15),
                //  color: Color(0xffe1ecef),
                /* gradient: LinearGradient(
            colors: [Color(0xffffffff),Color(0xffe1ecf7),Color(0xffc1d5ee),Color(0xffaecbeb)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0,0.5,0.8,1]

          )*/
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xff3e8eda),
                   //   color: Color(0xffffc8dd),
                      //   color: Color(0xff123456),
                      blurRadius: 0,
                      offset: Offset(-4, 4)
                  ),
                  BoxShadow(
                      color: Color(0xffffffff),
                      blurRadius: 0,
                      offset: Offset(0, 0)
                  ),
                  BoxShadow(
                      color: Color(0xffffffff),
                      blurRadius: 15,
                      offset: Offset(5, 0)
                  ),
                ]
            ),
            child: ListTile(
              // title: Text('밤이 되면 생각이 많아진다.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 12, fontFamily: 'LeferiPoint', fontWeight: FontWeight.w700),),
              title: Text('밤이 되면 생각이 많아진다.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 12),),
              //   title: Text('봄봄봄', textAlign: TextAlign.justify, style: TextStyle(fontFamily: )),
              //  trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                print('click');
              },
            ),
          );
        });
  }
}

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}



class _InputFieldState extends State<InputField> {

  var text = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
      // color: Color(0xffa2d2ff),
      color: Color(0xfff8f9fb),
      child: Row(
        children: [
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child:
            Container(
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              padding: EdgeInsets.all(10),

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                decoration: InputDecoration(
                    labelText: '하루한말',
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never
                ),
              ),
            ),

          ),
          Expanded(

              child: Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: EdgeInsets.all(0),
                child: Row(
                    children: [
                      InkWell(
                        child: Image.asset('btnbtn.png',width:60,height: 60),
                      )
                      /* IconButton(onPressed: (){
                      print('clickaa');
                    }, icon: Icon(Icons.send_outlined))*/
                    ]),
              ))
        ],

      ),
    );
  }
}
