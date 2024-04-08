import 'package:get/get.dart';

import '../../data/models/random_user_model.dart';
import '../entities/random_user.dart';
import '../repositories/user_repository.dart';

class Users {

  UserRepository _userRepository = UserRepository();

  Future<void> addUser() async => _userRepository.getUser();
  Future<List<RandomUser>> getAllUsers() async => _userRepository.getAllUsers();
  Future<void> deleteUser(id) async => _userRepository.deleteUser(id);
  Future<void> deleteAll() async =>  _userRepository.deleteAll();
  Future<void> updateUser(user) async => _userRepository.updateUser(user);
}
