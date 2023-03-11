import 'package:badges_app/features/badges/model/badge_data_model.dart';
import 'package:badges_app/features/badges/model/users_list_data_model.dart';

abstract class IBadgesService {

  IBadgesService();

  Future<List<BadgeDataModel?>>  fetchLocalBadges();
  Future<List<UsersDataModel?>>  fetchLocalUsers();
}
