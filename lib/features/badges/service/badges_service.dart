import 'dart:convert';
import 'package:badges_app/core/constants/app/app_constant.dart';
import 'package:badges_app/features/badges/model/users_list_data_model.dart';
import 'package:flutter/services.dart';
import '../../../core/init/app_state/app_state.dart';
import '../../../core/utility/api.response.dart';
import '../model/badge_data_model.dart';
import 'IBadgesService.dart';

class BadgesService extends IBadgesService {
  BadgesService() : super();

  @override
  Future<List<BadgeDataModel>> fetchLocalBadges() async {
    var localData = await rootBundle.loadString(AppConstants.BADGES_LOCAL_PATH);

    Map<String, dynamic> map = json.decode(localData);
    final List<BadgeDataModel>? result =
        ResponseParser<BadgeDataModel>(response: map['value'])
            .fromList(model: BadgeDataModel());

    AppStateManager.instance.badges = result!;
    return result;
  }

  @override
  Future<List<UsersDataModel?>> fetchLocalUsers() {
    // TODO: implement fetchUsers
    throw UnimplementedError();
  }
}
