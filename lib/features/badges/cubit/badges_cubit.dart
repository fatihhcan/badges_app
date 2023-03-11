import 'dart:async';
import 'package:badges_app/core/constants/images/image_constants.dart';
import 'package:badges_app/features/badges/model/badge_data_model.dart';
import 'package:badges_app/features/badges/model/list_user_badge_model.dart';
import 'package:badges_app/features/badges/service/badges_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/base/cubit/base_cubit.dart';
import '../../../core/init/app_state/app_state.dart';
import '../model/author_model.dart';
import '../model/users_list_data_model.dart';

part 'badges_state.dart';

class BadgesCubit extends Cubit<BadgesState> with BaseCubit {
  BadgesCubit() : super(const BadgesState());
  late BadgesService badgesService;
  late List<BadgeDataModel> badgesList = [];
  late List<UsersDataModel> usersList = [];
  late List<Badge> badgeUserList = [];
  late List<Author> authorList = [];
  late ScrollController controller;
  @override
  void init()  {
    initService();
  }

  void initService() async {
    badgesService = BadgesService();
    controller = ScrollController();
    await fetchLocalBadges();
  }

  void localFetchLoading(bool loading) {
    emit(state.copyWith(loading: loading));
  }

  Future<void> fetchLocalBadges() async {
    localFetchLoading(true);
    await badgesService.fetchLocalBadges();
    await badgesService.fetchLocalUsers();

    badgesList = AppStateManager.instance.badges;
    usersList = AppStateManager.instance.users;
    badgeUserList = AppStateManager.instance.badgeUsers;
    localFetchLoading(false);
  }

  

  String badgesIcon(int index) {
    if (badgesList[index].id.toString() == '3') {
      return ImageConstants.instance.addingValue;
    } else if (badgesList[index].id.toString() == '4') {
      return ImageConstants.instance.openToChange;
    } else if (badgesList[index].id.toString() == '5') {
      return ImageConstants.instance.masteringHisJob;
    } else if (badgesList[index].id.toString() == '6') {
      return ImageConstants.instance.lead;
    } else if (badgesList[index].id.toString() == '7') {
      return ImageConstants.instance.problemSolver;
    } else if (badgesList[index].id.toString() == '8') {
      return ImageConstants.instance.teamPlayer;
    } else if (badgesList[index].id.toString() == '9') {
      return ImageConstants.instance.gratitude;
    } else if (badgesList[index].id.toString() == '10') {
      return ImageConstants.instance.creative;
    } else {
      return ImageConstants.instance.innovative;
    }
  }


  @override
  void setContext(BuildContext context) => this.context = context;
}
