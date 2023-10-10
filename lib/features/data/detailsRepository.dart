import 'dart:convert';

import 'package:fk_sample/features/data/detailsProvider.dart';
import 'package:fk_sample/models/blogDataConfig.dart';

class DetailsRepository implements IDetailsRepository {
  IDetailsProvider provider;

  DetailsRepository({
    required this.provider,
  });

  @override
  Future<List<BlogDataConfig>> getDetails() async {
    List<BlogDataConfig> responseDataList = [];
    try {
      final apiResponse = await provider.getDetails();
      if (apiResponse.statusCode != 200) {
        throw Exception(apiResponse.statusCode);
      }
      Map<String, dynamic> responseData = json.decode(apiResponse.body);

      for (var data in responseData['blogs']) {
        BlogDataConfig blogData = BlogDataConfig(
            title: data['title'],
            id: data['id'],
            imageUrl: data['image_url'],
            favourite: false);
        responseDataList.add(blogData);
      }

      return responseDataList;
    } on Exception catch (e, stacktrace) {
      return responseDataList;
      // throw Exception();
    }
  }
}

abstract class IDetailsRepository {
  Future<List<BlogDataConfig>> getDetails();
}
