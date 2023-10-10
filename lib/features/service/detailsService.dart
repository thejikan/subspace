import 'package:fk_sample/features/data/detailsRepository.dart';
import 'package:fk_sample/models/blogDataConfig.dart';
import 'package:fk_sample/models/detailsModel.dart';
import 'package:rxdart/subjects.dart';

class DetailsService {
  IDetailsRepository repository;

  late DetailsModel _detailsModel;
  late BehaviorSubject<DetailsModel> detailsController;

  DetailsService({required this.repository, DetailsModel? detailsModel}) {
    _detailsModel = detailsModel ?? DetailsModel.empty();
  }

  List<BlogDataConfig> favoriteBlogs = [];

  Future<List<BlogDataConfig>> apiRequestData() async {
    try {
      List<BlogDataConfig> data = await repository.getDetails();
      _detailsModel.blogData = data;

      return data;
    } catch (e) {
      rethrow;
    }
  }

  List<BlogDataConfig> getData() {
    return favoriteBlogs;
  }

  void setData(List<BlogDataConfig> data) {
    favoriteBlogs = data;
  }
}
