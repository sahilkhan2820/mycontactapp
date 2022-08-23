import 'dart:async';

import '../db_helper/repository.dart';
import '../model/User.dart';

class UserService {
  late Repository _repository;
  UserService() {
    _repository = Repository();
  }
  //Save User
  SaveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

  //Read All Users
  readAllUsers() async {
    return await _repository.readData('users');
  }

  //Edit User
  UpdateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}
