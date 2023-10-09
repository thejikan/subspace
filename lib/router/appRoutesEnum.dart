import 'package:fk_sample/router/routesHelperClass.dart';

class AppRoutes {
  static const home = RoutesBase(
    name: "home",
    routePath: "/home",
    routeSubPath: "home",
  );
  static const details = RoutesBase(
    name: "details",
    routePath: '/home/details',
    routeSubPath: "details",
  );
  static const login = RoutesBase(
    name: "login",
    routePath: '/home/login',
    routeSubPath: "login",
  );
  static const register = RoutesBase(
    name: "register",
    routePath: '/home/register',
    routeSubPath: "register",
  );

}
