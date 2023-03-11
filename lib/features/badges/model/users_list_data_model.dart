import 'package:badges_app/features/badges/model/list_user_badge_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/model/base_model.dart';

part 'users_list_data_model.g.dart';

@JsonSerializable()
class UsersDataModel extends BaseModel<UsersDataModel> {
    UsersDataModel({
         this.relatedPerson,
         this.principalCount,
         this.praiseRating,
         this.message,
         this.badge,
         this.author, 
         this.created,
         this.id,
     
    });
   String? id;
   String? praiseRating;
   String? principalCount;
   String? message;
   String? created;
   List<Badge>? badge;
   List<dynamic>? author;
   List<dynamic>? relatedPerson;

    factory UsersDataModel.fromJson(Map<String, dynamic> json) => _$UsersDataModelFromJson(json);
    
    @override
    UsersDataModel fromJson(Map<String, dynamic> json) {
    return _$UsersDataModelFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$UsersDataModelToJson(this);
    }
}

