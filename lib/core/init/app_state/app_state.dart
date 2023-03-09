import 'package:badges_app/features/badges/model/badge_data_model.dart';
import 'package:badges_app/features/badges/model/users_list_data_model.dart';

class AppStateManager {
  static AppStateManager? _instance;
  static AppStateManager get instance {
    return _instance ??= AppStateManager.init();
  }

  List<BadgeDataModel> badges = [];
  List<UsersDataModel> users = [];

  AppStateManager.init();
}
