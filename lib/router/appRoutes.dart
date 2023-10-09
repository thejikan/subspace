part of 'router.dart';

GoRoute _homeRoutes() {
  return GoRoute(
    path: AppRoutes.home.routePath,
    builder: (context, state) {
      return RepositoryProvider.value(
        value: serviceLocator.getDetailsService(),
        child: const HomeView(),
      );
      // return HomeView();
    },
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.login.routeSubPath,
        builder: (context, state) {
          return LoginView();
        },
      ),
      GoRoute(
        path: AppRoutes.register.routeSubPath,
        builder: (context, state) {
          return RegisterView();
        },
      ),
      GoRoute(
        path: AppRoutes.details.routeSubPath,
        builder: (context, state) {
          DetailsTypeConfig data = state.extra as DetailsTypeConfig;
          return DetailsView(data: data);
        },
      ),
    ],

  );
}
