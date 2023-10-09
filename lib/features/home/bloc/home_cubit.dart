import 'package:equatable/equatable.dart';
import 'package:fk_sample/features/service/detailsService.dart';
import 'package:fk_sample/models/detailsTypeConfig.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit(this._detailsService) : super(const HomeViewState()) {
    initialState();
  }

  final DetailsService _detailsService;

  void initialState() {
    List<DetailsTypeConfig> data = _detailsService.productsList();
    emit(state.copyWith(
      productData: data,
      productDataAll: data,
    ));
  }

  void searchButtonClicked(){
    String searchItem = state.searchText;
    List<DetailsTypeConfig> data = _detailsService.productsList();
    if(searchItem.isEmpty){
      emit(state.copyWith(
        productData: state.productDataAll,
      ));
      return;
    }

    List<DetailsTypeConfig> newData = [];
    for(var product in data){
      if(product.title.contains(searchItem)){
        newData.add(product);
      }else if(product.place.contains(searchItem)){
        newData.add(product);
      }
    }

    emit(state.copyWith(
      productData: newData,
    ));

  }

  void textChanged(String newText){
    emit(state.copyWith(
      searchText: newText,
    ));
  }

}
