part of 'home_cubit.dart';

class HomeViewState extends Equatable {
  final List<BlogDataConfig> blogData;
  final List<BlogDataConfig> blogAll;

  const HomeViewState({
    this.blogData = const [],
    this.blogAll = const [],
  });

  HomeViewState copyWith({
    List<BlogDataConfig>? blogData,
    List<BlogDataConfig>? blogAll,
  }) {
    return HomeViewState(
      blogData: blogData ?? this.blogData,
      blogAll: blogAll ?? this.blogAll,
    );
  }

  @override
  List<Object?> get props => [blogData, blogAll];
}
