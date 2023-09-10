import 'package:get_it/get_it.dart';

import '../repositories/hive_repo.dart';
import '../repositories/online_repo.dart';
import '../repositories/repository.dart';

class LocatorUtils {
  static final GetIt _locator = GetIt.instance;

  static GetIt get locator => _locator;

  static void init() {
    _locator.registerLazySingleton<Repository>(
          () => Repository(
        onlineRepo: OnlineRepo(),
        hiveRepo: HiveRepo(),
      ),
    );
  }
}