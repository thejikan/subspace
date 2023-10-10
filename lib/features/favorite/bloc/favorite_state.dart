part of 'favorite_cubit.dart';

class FavoriteViewState extends Equatable {
  final List<BlogDataConfig> blogData;
  final List<BlogDataConfig> blogAll;

  const FavoriteViewState({
    this.blogData = const [],
    this.blogAll = const [],
  });

  FavoriteViewState copyWith({
    List<BlogDataConfig>? blogData,
    List<BlogDataConfig>? blogAll,
  }) {
    return FavoriteViewState(
      blogData: blogData ?? this.blogData,
      blogAll: blogAll ?? this.blogAll,
    );
  }

  @override
  List<Object?> get props => [blogData, blogAll];
}