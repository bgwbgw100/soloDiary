import 'dart:collection';

import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'fireBaseAuthRemote.dart';


class LoginService {
  final FireBaseAuthRemote  _fireBaseAuthRemote= FireBaseAuthRemote();
   void  kakaoLogin  () async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      User user = await UserApi.instance.me();
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


    //  var final  token = await _fireBaseAuthRemote.createCustomToken();
    try{
      OAuthToken token = await UserApi.instance.loginWithKakaoAccount();

      User user = await UserApi.instance.me();
      List<String> scopes = [];
      if (user.kakaoAccount?.emailNeedsAgreement == true) {
        scopes.add('account_email');
      }

      if (scopes.length > 0) {
        print('사용자에게 추가 동의 받아야 하는 항목이 있습니다');

        // OpenID Connect 사용 시
        // scope 목록에 "openid" 문자열을 추가하고 요청해야 함
        // 해당 문자열을 포함하지 않은 경우, ID 토큰이 재발급되지 않음
        // scopes.add("openid")

        // scope 목록을 전달하여 추가 항목 동의 받기 요청
        // 지정된 동의 항목에 대한 동의 화면을 거쳐 다시 카카오 로그인 수행
        OAuthToken token;
        try {
          token = await UserApi.instance.loginWithNewScopes(scopes);
          print('현재 사용자가 동의한 동의 항목: ${token.scopes}');
        } catch (error) {
          print('추가 동의 요청 실패 $error');
          return;
        }
        try {
          User user = await UserApi.instance.me();
          print('사용자 정보 요청 성공'
              '\n회원번호: ${user.id}'
              '\n이메일: ${user.kakaoAccount?.email}');
        } catch (error) {
          print('사용자 정보 요청 실패 $error');
        }
      }




      Map<String,dynamic> userMap = {
        "uid": user.id.toString()
        ,"email": user.kakaoAccount!.email
      };
      print("user id = " +user.id.toString());
      print("user id = " +user.kakaoAccount!.email.toString()) ;
      print('카카오계정으로 로그인 성공 ${token.accessToken}');
    } catch (error) {
      print('카카오계정으로 로그인 실패 $error');
    }
  }

  void logout() async{
     try{
       await UserApi.instance.unlink();
     }catch(error){
       print('카카오로그아웃 실패 $error');
     }
  }


}