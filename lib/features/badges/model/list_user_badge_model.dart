import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/model/base_model.dart';

part 'list_user_badge_model.g.dart';

@JsonSerializable()
class Badge extends BaseModel<Badge> {
    Badge({
         this.lookupId,
         this.lookupValue,
         this.isSecretFieldValue,
    });

    int? lookupId;
    String? lookupValue;
    bool? isSecretFieldValue;

        factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
    
    @override
    Badge fromJson(Map<String, dynamic> json) {
    return _$BadgeFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$BadgeToJson(this);
    }

}
