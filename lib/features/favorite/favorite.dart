import 'package:fk_sample/features/favorite/bloc/favorite_cubit.dart';
import 'package:fk_sample/features/service/detailsService.dart';
import 'package:fk_sample/router/appRoutesEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteViewCubit>(
      create: (context) => FavoriteViewCubit(context.read<DetailsService>()),
      child: const _FavoriteView(),
    );
  }
}

class _FavoriteView extends StatelessWidget {
  const _FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
          ),
          title: const Text('Favorite Blog'),
        ),
        body: BlocConsumer<FavoriteViewCubit, FavoriteViewState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: CustomScrollView(
                      primary: false,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 20.0),
                          sliver: SliverGrid.count(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 1,
                            children:
                                List.generate(state.blogData.length, (index) {
                              return Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.go(
                                        AppRoutes.details.routePath,
                                        extra: {
                                          "blog": state.blogData[index],
                                          "tab": 2,
                                        },
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Material(
                                        elevation: 8,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: const BoxDecoration(
                                            color: Colors.white10,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Image.network(state
                                                    .blogData[index].imageUrl),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 16.0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        state.blogData[index]
                                                            .title,
                                                        style: const TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }));
  }
}
