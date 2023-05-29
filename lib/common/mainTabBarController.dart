import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solodiary/chat/chatView.dart';
import 'package:solodiary/common/login/LoginProvider.dart';
import 'package:solodiary/common/login/tap/widget/loginWidget.dart';
import 'package:solodiary/common/login/tap/widget/menuDropdownButton.dart';
import 'package:solodiary/home/homeView.dart';
import 'package:solodiary/common/settingView.dart';
import 'package:solodiary/util/customColor.dart';

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
    final loginProvider = Provider.of<LoginProvider>(context);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(CustomColor.background),
        title: Text(
          '솔로 디데이',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          loginProvider.isLoggedIn ?
          MenuDropdownButton(FirebaseAuth.instance.currentUser?.displayName ?? "에러") :
          LoginButtonWidget()

         /* IconButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingView()));
          }, icon: Icon(Icons.settings), color: Colors.black,)*/
        ],
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
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: HomeView()
                ),
                Container(
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