import 'package:badges_app/features/badges/model/badge_data_model.dart';
import 'package:badges_app/features/badges/model/users_list_data_model.dart';
import 'package:badges_app/features/badges/service/badges_service.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  late BadgesService localUserService;
  setUp(() async {
    localUserService = BadgesService();
  });

  test('fetchLocalUsers success', () async {
    final List<UsersDataModel?> result = await localUserService.fetchLocalUsers();
    expect(result, isList);
    expect(result, isNotEmpty);
  });
}
