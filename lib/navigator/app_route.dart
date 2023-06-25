import 'package:auto_route/auto_route.dart';

import 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', initial: true),
        AutoRoute(
          page: Test1Route.page,
          path: '/test',
        ),

        /// routes go here
      ];
}
