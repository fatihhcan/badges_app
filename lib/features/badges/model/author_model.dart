import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/model/base_model.dart';

part 'author_model.g.dart';

@JsonSerializable()
class Author extends BaseModel<Author>{
    Author({
       this.id,
         this.title,
         this.email,
         this.sip,
         this.picture,
    });

    String? id;
    String? title;
    String? email;
    String? sip;
    String? picture;

    factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
    
    @override
    Author fromJson(Map<String, dynamic> json) {
    return _$AuthorFromJson(json);
    }

    @override
    Map<String, dynamic> toJson() {
    return _$AuthorToJson(this);
    }
}