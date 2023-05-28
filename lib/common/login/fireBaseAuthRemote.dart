import 'package:http/http.dart' as http;

class FireBaseAuthRemote{
  final String url ="https://createcoustomtoken-7mpi4z36fa-uc.a.run.app";

  Future<String> createCustomToken(Map<String,dynamic> user) async{
    final customTokenResponse = await http.post(Uri.parse(url),body: user);

    return customTokenResponse.body;
  }
}