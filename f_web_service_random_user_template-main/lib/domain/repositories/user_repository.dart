import 'package:f_web_service_random_user_template/data/models/random_user_json_response_model.dart';
import 'package:loggy/loggy.dart';

import '../../data/datasources/local/user_local_datasource.dart';
import '../../data/datasources/remote/user_remote_datasource.dart';
import '../../data/models/random_user_model.dart';
import '../entities/random_user.dart';

class UserRepository {

  UserLocalDataSource _userLocalDataSource = UserLocalDataSource();

  UserRepository() {
    logInfo("Starting UserRepository");
    _userLocalDataSource = UserLocalDataSource();
  }

  Future<bool> getUser() async {
    await _userLocalDataSource.addUser(RandomUserModel.fromRemote(UserRemoteModel as UserRemoteModel).toEntity());
    return true;
  }

  Future<List<RandomUser>> getAllUsers() async => await _userLocalDataSource.getAllUsers();

  Future<void> deleteUser(id) async => await _userLocalDataSource.deleteUser(id);

  Future<void> deleteAll() async => await _userLocalDataSource.deleteAll();

  Future<void> updateUser(user) async => await _userLocalDataSource.updateUser(user);
}
