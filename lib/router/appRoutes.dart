part of 'router.dart';

GoRoute _homeRoutes() {
  return GoRoute(
    path: AppRoutes.home.routePath,
    builder: (context, state) {
      return RepositoryProvider.value(
        value: serviceLocator.getDetailsService(),
        child: HomeView(),
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
        path: AppRoutes.favorite.routeSubPath,
        builder: (context, state) {
          return RepositoryProvider.value(
            value: serviceLocator.getDetailsService(),
            child: const FavoriteView(),
          );
          // return FavoriteView();
        },
      ),
      GoRoute(
        path: AppRoutes.details.routeSubPath,
        builder: (context, state) {
          Map<String, dynamic> data = state.extra as Map<String, dynamic>;
          return DetailsView(data: data['blog'], tab: data['tab']);
        },
      ),
      GoRoute(
        path: AppRoutes.noConnection.routeSubPath,
        builder: (context, state) {
          return NoConnectionView();
        },
      ),
    ],

  );
}
