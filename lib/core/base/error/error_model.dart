import 'dart:convert';

List<ErrorModel> badgeDataModelFromJson(String str) => List<ErrorModel>.from(json.decode(str).map((x) => ErrorModel.fromJson(x)));

String badgeDataModelToJson(List<ErrorModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ErrorModel {
    ErrorModel({
        required this.message,

    });

    String message;

    factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}
