import 'dart:convert';

import 'package:himaka/Models/product_service_details_response.dart';

AddReviewResponse addReviewResponseFromJson(String str) =>
    AddReviewResponse.fromJson(json.decode(str));

String addReviewResponseToJson(AddReviewResponse data) =>
    json.encode(data.toJson());

class AddReviewResponse {
  AddReviewResponse({this.status, this.msg, this.data, this.errors});

  bool status;
  String msg;
  Data data;
  List<String> errors;

  factory AddReviewResponse.fromJson(Map<String, dynamic> json) =>
      AddReviewResponse(
        status: json["status"],
        msg: json["msg"],
        data: json["data"]!=null?Data.fromJson(json["data"]):null,
        errors: json["errors"] != null
            ? List<String>.from(json["errors"].map((x) => x))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.review,
  });

  Review review;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        review: json["review"] != null ? Review.fromJson(json["review"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "review": review.toJson(),
      };
}

