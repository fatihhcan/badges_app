import 'dart:async';
import 'package:badges_app/features/badges/model/badge_data_model.dart';
import 'package:badges_app/features/badges/service/badges_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/base/cubit/base_cubit.dart';
import '../../../core/init/app_state/app_state.dart';

part 'badges_state.dart';

class BadgesCubit extends Cubit<BadgesState> with BaseCubit {
  BadgesCubit() : super(const BadgesState());
  late BadgesService badgesService;
  late List<BadgeDataModel> badgesList = [];
  @override
  void init() async {
    initService();
  }

  void initService() {
    badgesService = BadgesService();

    fetchLocalBadges();
  }

  void localFetchLoading(bool loading) {
    emit(state.copyWith(loading: loading));
  }

  Future<void> fetchLocalBadges() async {
    localFetchLoading(true);

    await badgesService.fetchLocalBadges();
    badgesList = AppStateManager.instance.badges;
    localFetchLoading(false);
  }

  @override
  void setContext(BuildContext context) => this.context = context;
}
