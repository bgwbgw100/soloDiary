
import 'package:solodiary/DB/dbHelper.dart';
import 'package:solodiary/DB/noneLoginUserModel.dart';

class DBHelperCrudRepository{
  static Future<UserNoneLogin> create(UserNoneLogin user) async {
    var db = await DBHelper().database;
    var id = await db.insert('userTable', user.toJson());
    return user.clone(id: id);
  }
}