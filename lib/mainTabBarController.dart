import 'package:flutter/material.dart';
import 'package:solodiary/chatView.dart';
import 'package:solodiary/homeView.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,  //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(
          '솔로 디데이',
        ),
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          Container(
            height: 80,
            alignment: Alignment.center,
            child: Icon(Icons.home_filled),
          ),
          Container(
            height: 80,
            alignment: Alignment.center,
            child: Icon(Icons.chat_bubble),
          ),
        ],
        indicator: BoxDecoration(
          border: Border.all(width: 3,color: Colors.black),
        ),

        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        controller: _tabController,
      ),
      body: Column(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(),
          //   ),
          //   child:
          // ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  // color: Colors.yellow[200],
                  // alignment: Alignment.center,
                  child: HomeView(),
                ),
                Container(
                  // color: Colors.green[200],
                  // alignment: Alignment.center,
                  child: OneDay(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}