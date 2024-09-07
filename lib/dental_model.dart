import 'package:flutter/material.dart';

class DentalModel {
  IconData leadingIcon;
  String title;
  String subTitle;
  String trailingIcon;
  bool isChecked = false;

  DentalModel({
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.isChecked,
  });

  factory DentalModel.fromJson(Map<String, dynamic> json) => DentalModel(
        leadingIcon: json["leadingIcon"],
        title: json["title"],
        subTitle: json["subTitle"],
        trailingIcon: json["trailingIcon"],
        isChecked: json["isChecked"],
      );

  Map<String, dynamic> toJson() => {
        "leadingIcon": leadingIcon,
        "title": title,
        "subTitle": subTitle,
        "trailingIcon": trailingIcon,
        "isChecked": isChecked,
      };
}
