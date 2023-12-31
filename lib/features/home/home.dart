import 'package:fk_sample/features/home/bloc/home_cubit.dart';
import 'package:fk_sample/features/service/detailsService.dart';
import 'package:fk_sample/router/appRoutesEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.grey[300],
  padding: const EdgeInsets.symmetric(horizontal: 8.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(18)),
  ),
);

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeViewCubit>(
      create: (context) => HomeViewCubit(context.read<DetailsService>()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Subspace'),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  context.read<HomeViewCubit>().favouriteBlogs();
                  context.go(AppRoutes.favorite.routePath);
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.amber,
                    ),
                    Text('  Blogs'),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: BlocConsumer<HomeViewCubit, HomeViewState>(
            listener: (context, state) {
              if(state.blogData.isEmpty){
                context.go(AppRoutes.noConnection.routePath);
              }
            },
            buildWhen: (current, previous) =>
                current.blogData != previous.blogData,
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
                                          "tab": 1,
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
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
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
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          context
                                              .read<HomeViewCubit>()
                                              .addFavourite(index);
                                        },
                                        child: (state.blogData[index].favourite)
                                            ? const Icon(
                                                Icons.favorite,
                                                color: Colors.amber,
                                              )
                                            : const Icon(
                                                Icons.favorite_border,
                                                color: Colors.black12,
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
