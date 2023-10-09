part of 'home_cubit.dart';

class HomeViewState extends Equatable {
  final String searchText;
  final List<DetailsTypeConfig> productData;
  final List<DetailsTypeConfig> productDataAll;

  const HomeViewState({
    this.searchText = '',
    this.productData = const [],
    this.productDataAll = const [],
  });

  HomeViewState copyWith({
    String? searchText,
    List<DetailsTypeConfig>? productData,
    List<DetailsTypeConfig>? productDataAll,
  }) {
    return HomeViewState(
      searchText: searchText ?? this.searchText,
      productData: productData ?? this.productData,
      productDataAll: productDataAll ?? this.productDataAll,
    );
  }

  @override
  List<Object?> get props => [searchText, productData, productDataAll];
}