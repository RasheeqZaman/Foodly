import 'package:hive_flutter/hive_flutter.dart';

import '../models/user_model.dart';

class HiveBox {
  static const String boxNameCurrentUser = 'CurrentUser';

  static Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(UserModelAdapter());

    await Hive.openBox<UserModel>(boxNameCurrentUser);
  }

  static Box<UserModel> getCurrentUserBox() =>
      Hive.box<UserModel>(boxNameCurrentUser);
}

class HiveRepo {
  // CurrentUser
  void removeCurrentUser() {
    Box<UserModel> userModelBox = HiveBox.getCurrentUserBox();
    userModelBox.clear();
  }

  void saveCurrentUser(UserModel userModel) {
    Box<UserModel> userModelBox = HiveBox.getCurrentUserBox();
    userModelBox.clear();
    userModelBox.put(userModel.id, userModel.copy());
  }

  UserModel? getCurrentUser() {
    Box<UserModel> userModelBox = HiveBox.getCurrentUserBox();
    UserModel? userModel =
        (userModelBox.isEmpty) ? null : userModelBox.values.first;
    return userModel;
  }
}
