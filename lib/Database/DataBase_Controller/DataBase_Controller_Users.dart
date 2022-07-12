import 'package:sqflite/sqflite.dart';
import '../../Shared_Preference.dart';
import '../DataBase_Controller.dart';
import '../Models/Users.dart';
import 'DataBase_Operations.dart';

class DataBaseControllerUsers implements DataBaseOperation<User> {
  final Database _database = DBController().dataBase;

  Future<bool> login({required String phone}) async {
    List<Map<String, dynamic>> maps =
        await _database.query('users', where: 'phone = ?', whereArgs: [phone]);
    if (maps.isNotEmpty) {
      User user = User.fromMap(maps.first);
      await SharedPreferencesController().save(user);
    }
    return maps.isNotEmpty;
  }

  @override
  Future<int> create(User user) async {
    int newRowId = await _database.insert('users', user.toMap());
    return newRowId;
  }

  @override
  Future<bool> delete(int id) async {
    int countOfDeletedRows =
        await _database.delete('users', where: 'id = ?', whereArgs: [id]);
    return countOfDeletedRows == 1;
  }

  @override
  Future<List<User>> read() async {
    List<Map<String, dynamic>> rows = await _database.query('users');
    return rows
        .map((Map<String, dynamic> rowMap) => User.fromMap(rowMap))
        .toList();
  }

  @override
  Future<User?> show(int id) async {
    List<Map<String, dynamic>> rows =
        await _database.query('users', where: 'id = ?', whereArgs: [id]);
    if (rows.isNotEmpty) {
      return User.fromMap(rows.first);
    }
    return null;
  }

  @override
  Future<bool> update(User user) async {
    int countOfUpdatedRows = await _database
        .update('users', user.toMap(), where: 'id = ?', whereArgs: [user.id]);
    return countOfUpdatedRows == 1;
  }
}
