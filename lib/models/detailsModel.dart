import 'dart:convert';
import 'package:fk_sample/models/blogDataConfig.dart';

class DetailsModel {
  List<BlogDataConfig> blogData;

  DetailsModel({
    this.blogData = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blogData': blogData,
    };
  }

  factory DetailsModel.fromMap(Map<String, dynamic> map) {
    return DetailsModel(
      blogData: map['blogData'] as List<BlogDataConfig>,
    );
  }

  factory DetailsModel.empty() {
    return DetailsModel(
      blogData: [],
    );
  }

  factory DetailsModel.fromQueryMap(Map<String, dynamic> map) {
    return DetailsModel(
      blogData: map['blogData'] as List<BlogDataConfig>? ?? [],
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsModel.fromJson(String source) =>
      DetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
