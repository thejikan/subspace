import 'package:equatable/equatable.dart';
import 'package:fk_sample/features/service/detailsService.dart';
import 'package:fk_sample/models/blogDataConfig.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_state.dart';

class FavoriteViewCubit extends Cubit<FavoriteViewState> {
  FavoriteViewCubit(this._detailsService) : super(const FavoriteViewState()) {
    initialState();
  }

  final DetailsService _detailsService;

  void initialState() async {
    List<BlogDataConfig> data = _detailsService.getData();
    List<BlogDataConfig> data1 = [];
    for (var blog in data) {
      if (blog.favourite == true) {
        data1.add(blog);
      }
    }
    emit(state.copyWith(
      blogData: data1,
      blogAll: data1,
    ));
  }
}
