import 'package:fk_sample/features/details.dart';
import 'package:fk_sample/features/home/home.dart';
import 'package:fk_sample/features/login.dart';
import 'package:fk_sample/features/register.dart';
import 'package:fk_sample/features/service/serviceLocator.dart';
import 'package:fk_sample/main.dart';
import 'package:fk_sample/models/detailsTypeConfig.dart';
import 'package:fk_sample/router/appRoutesEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'appRoutes.dart';

typedef PopViewCallback = void Function(bool result);

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: 'Flutter Demo Home Page');
      },
      redirect: (BuildContext context, GoRouterState state) async {

        return AppRoutes.home.routePath;
      },
    ),

    _homeRoutes(),

  ],
);