import 'package:badges_app/features/badges/model/badge_data_model.dart';
import 'package:badges_app/features/badges/service/badges_service.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  late BadgesService badgesService;
  setUp(() async {
    badgesService = BadgesService();
  });

  test('fetchBadges success', () async {
    final List<BadgeDataModel> result = await badgesService.fetchLocalBadges();
    expect(result, isList);
    expect(result, isNotEmpty);
  });
}
