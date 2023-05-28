import 'dart:collection';

import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'fireBaseAuthRemote.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginService {
  final FireBaseAuthRemote  _fireBaseAuthRemoteDataSource = FireBaseAuthRemote();

   void  kakaoLogin  () async {

    try {
      bool isInstalled = await kakao.isKakaoTalkInstalled();
      kakao.OAuthToken token = await kakao.UserApi.instance.loginWithKakaoTalk();
      kakao.User user = await kakao.UserApi.instance.me();
      Map<String,dynamic> userMap = {
        "uid": user.id.toString()
        ,"email": user.kakaoAccount!.email
      };

    //  var final  token = await _fireBaseAuthRemote.createCustomToken();
      print('카카오톡으로 로그인 성공 ${token.accessToken}');
      print("user id = " +user.id.toString());
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
    }
  }
  void kakaoLogin2 () async{


    try{
      kakao.OAuthToken token = await kakao.UserApi.instance.loginWithKakaoAccount();
      print("object0");
      kakao.User user = await kakao.UserApi.instance.me();

      kakao.`
      List<String> scopes = [];
      if (user.kakaoAccount?.emailNeedsAgreement == true) {

        scopes.add('account_email');

      }

      if (scopes.length > 0) {
        print('사용자에게 추가 동의 받아야 하는 항목이 있습니다');

        try {
          token = await kakao.UserApi.instance.loginWithNewScopes(scopes);
          print('현재 사용자가 동의한 동의 항목: ${token.scopes}');
        } catch (error) {
          print('추가 동의 요청 실패 $error');
          return;
        }
        try {
          user = await kakao.UserApi.instance.me();

          
        } catch (error) {
          print('사용자 정보 요청 실패 $error');
        }
      }
      final customToken = await _fireBaseAuthRemoteDataSource.createCustomToken({
        'uid': user.id.toString(),
        'emali' : user..kakaoAccount?.email,
      });

      print(customToken);
      await FirebaseAuth.instance.signInWithCustomToken(customToken);

      print("user id = " +user.id.toString());
      print('카카오계정으로 로그인 성공 ${token.accessToken}');
    } catch (error) {
      print('카카오계정으로 로그인 실패 $error');
    }
  }

  void logout() async{
     try{
       await kakao.UserApi.instance.unlink();
     }catch(error){
       print('카카오로그아웃 실패 $error');
     }
  }

}