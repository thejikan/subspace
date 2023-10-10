import 'package:equatable/equatable.dart';
import 'package:fk_sample/features/service/detailsService.dart';
import 'package:fk_sample/models/blogDataConfig.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit(this._detailsService) : super(const HomeViewState()) {
    initialState();
  }

  final DetailsService _detailsService;

  void initialState() async {
    List<BlogDataConfig> data = await _detailsService.apiRequestData();
    
    emit(state.copyWith(
      blogData: data,
      blogAll: data,
    ));
  }

  void addFavourite(int index) {
    List<BlogDataConfig> check = state.blogData;
    check[index].favourite = !check[index].favourite;

    emit(state.copyWith(
      blogAll: check,
      blogData: check,
    ));
  }

  void favouriteBlogs() {
    _detailsService.setData(state.blogData);
  }
}
