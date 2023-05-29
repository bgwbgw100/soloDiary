import 'dart:collection';

import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;
import 'package:provider/provider.dart';
import 'package:solodiary/common/login/LoginProvider.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'fireBaseAuthRemote.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginService {
  static LoginService? _instance;

  _LoginService() {}

  static LoginService getInstance() {
    _instance ??= LoginService();
    return _instance!;
  }

  final FireBaseAuthRemote _fireBaseAuthRemoteDataSource = FireBaseAuthRemote();

  kakaoLogin() async {
    try {
      kakao.OAuthToken token =
          await kakao.UserApi.instance.loginWithKakaoAccount();
      kakao.User user = await kakao.UserApi.instance.me();

      print(user.kakaoAccount?.emailNeedsAgreement);

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
      final customToken =
          await _fireBaseAuthRemoteDataSource.createCustomToken({
        'uid': user.id.toString(),
        'emali': user.kakaoAccount?.email.toString(),
      });

      await FirebaseAuth.instance.signInWithCustomToken(customToken);

      print('카카오계정으로 로그인 성공 ${token.accessToken}');
    } catch (error) {
      print('카카오계정으로 로그인 실패 $error');
    }
  }

  void logout() async {
    try {
      await kakao.UserApi.instance.unlink();
      await FirebaseAuth.instance.signOut();
      LoginProvider.getInstance().logoutSetProvider();

    } catch (error) {
      print('로그아웃 실패 $error');
    }
  }

  void login(login) async {
    await login();

    if(FirebaseAuth.instance.currentUser?.displayName == null){
      Uuid uuid = Uuid();
      FirebaseAuth.instance.currentUser?.updateDisplayName(uuid.v1());
    }

    LoginProvider.getInstance().loginSetProvider();
  }
}
