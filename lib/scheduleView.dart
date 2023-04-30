import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: Text('App', style: TextStyle(color: Color(0xff3e8eda))),
        backgroundColor: Color(0xfffefae0),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings), color: Colors.black,)
        ],
      ),
      body: BackGround(),
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
    return Scaffold(
      body: Container(
        color: Color(0xfffefae0),
        child: ScheduleView(),
      ),
    );
  }
}

class ScheduleView extends StatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount:54,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  //한 개 행에 보여줄 item 개수
        childAspectRatio: 1 / 1,  //item 의 가로 세로 비율
        mainAxisSpacing: 10,  //수평 padding
        crossAxisSpacing: 10,  //수직 padding
      ),
      itemBuilder: (c, i) {
        return  Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          decoration: BoxDecoration(
              color: Color(0xfffefae0),
              border: Border(),
              shape: BoxShape.circle,
              //    borderRadius: BorderRadius.circular(200),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xffbbcde3),
                    blurRadius: 5,
                    offset: Offset(0, 5)
                ),
                BoxShadow(
                    color: Color(0xffbbcde3),
                    blurRadius: 15,
                    offset: Offset(-5, 0)
                ),
              ]
          ),
          child: ListTile(
            title: Text('schedule', textAlign: TextAlign.start, style: TextStyle(fontSize: 12),),
            onTap: (){
              print('schedule click');
            },
          ),
        );
      },
      /*    itemBuilder: (c, i){
      return Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          color: Color(0xfffefae0),
          border: Border(),
          borderRadius: BorderRadius.circular(50),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffbbcde3),
              blurRadius: 5,
              offset: Offset(0, 5)
            ),
            BoxShadow(
              color: Color(0xffbbcde3),
              blurRadius: 15,
              offset: Offset(-5, 0)
            ),
          ]
        ),
        child: ListTile(
          title: Text('schedule', textAlign: TextAlign.start, style: TextStyle(fontSize: 12),),
          onTap: (){
            print('schedule click');
          },
        ),
      );
        }*/
    );
  }
}
