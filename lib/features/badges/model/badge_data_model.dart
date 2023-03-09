// To parse this JSON data, do
//
//     final badgeDataModel = badgeDataModelFromJson(jsonString);

import 'dart:convert';

List<BadgeDataModel> badgeDataModelFromJson(String str) => List<BadgeDataModel>.from(json.decode(str).map((x) => BadgeDataModel.fromJson(x)));

String badgeDataModelToJson(List<BadgeDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BadgeDataModel {
    BadgeDataModel({
        required this.odataType,
        required this.odataId,
        required this.odataEtag,
        required this.odataEditLink,
        required this.badgeDataModelId,
        required this.title,
        required this.badgeIcon,
        required this.id,
    });

    String odataType;
    String odataId;
    String odataEtag;
    String odataEditLink;
    int badgeDataModelId;
    String title;
    String badgeIcon;
    int id;

    factory BadgeDataModel.fromJson(Map<String, dynamic> json) => BadgeDataModel(
        odataType: json["odata.type"],
        odataId: json["odata.id"],
        odataEtag: json["odata.etag"],
        odataEditLink: json["odata.editLink"],
        badgeDataModelId: json["Id"],
        title: json["Title"],
        badgeIcon: json["BadgeIcon"],
        id: json["ID"],
    );

    Map<String, dynamic> toJson() => {
        "odata.type": odataType,
        "odata.id": odataId,
        "odata.etag": odataEtag,
        "odata.editLink": odataEditLink,
        "Id": badgeDataModelId,
        "Title": title,
        "BadgeIcon": badgeIcon,
        "ID": id,
    };
}
