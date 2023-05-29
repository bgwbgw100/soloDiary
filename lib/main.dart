import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';
import 'package:solodiary/common/login/LoginProvider.dart';
import 'package:solodiary/common/login/loginService.dart';
import 'package:solodiary/firebase_options.dart';
import 'chat/chatView.dart';
import 'intro.dart';
import 'common/mainTabBarController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // print(await  KakaoSdk.origin);

  KakaoSdk.init(
      nativeAppKey: '96e9047419b88a0bfed0295288ee2296',
      javaScriptAppKey: '4ea8ab4f350aacf363b8da7c20cceb36');

  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginProvider.getInstance(),
      child: MaterialApp(

        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Intro(routeContext: context, route: TabPage());
  }
}
