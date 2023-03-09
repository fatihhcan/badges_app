import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/model/base_model.dart';

part 'badge_data_model.g.dart';

@JsonSerializable()
class BadgeDataModel extends BaseModel<BadgeDataModel> {
    BadgeDataModel({
        this.odataType,
        this.odataId,
        this.odataEtag,
        this.odataEditLink,
        this.title,
        this.badgeIcon,
        this.id,
    });

    String? odataType;
    String? odataId;
    String? odataEtag;
    String? odataEditLink;
    String? title;
    String? badgeIcon;
    int? id;

    factory BadgeDataModel.fromJson(Map<String, dynamic> json) => _$BadgeDataModelFromJson(json);
    
    @override
    BadgeDataModel fromJson(Map<String, dynamic> json) {
    return _$BadgeDataModelFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$BadgeDataModelToJson(this);
    }
}
