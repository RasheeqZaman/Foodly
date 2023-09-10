import 'package:pranshakti/models/meals_list_model.dart';

import '../models/user_model.dart';
import 'hive_repo.dart';
import 'online_repo.dart';
import 'pref_repo.dart';

class Repository {
  final OnlineRepo onlineRepo;
  final HiveRepo hiveRepo;

  Repository({
    required this.onlineRepo,
    required this.hiveRepo,
  });

  // HiveRepo
  // CurrentUser
  void removeLocalCurrentUser() => hiveRepo.removeCurrentUser();

  void saveLocalCurrentUser(UserModel userModel) =>
      hiveRepo.saveCurrentUser(userModel);

  UserModel? getLocalCurrentUser() => hiveRepo.getCurrentUser();

  // PrefRepo
  // PrimarySwatch
  void saveLocalPrimarySwatchIndex(int index) =>
      PrefRepo.savePrimarySwatchIndex(index);

  Future<int?> getLocalPrimarySwatchIndex() => PrefRepo.getPrimarySwatchIndex();

  Future<ResponseModel<List<MealsListModel>?>> getMealsListModels() =>
      onlineRepo.getMealsListModels();
}
