import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoggingRouterObserver extends AutoRouterObserver {
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (kDebugMode) {
      print('Tab route visited: ${route.name}');
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (kDebugMode) {
      print('Pushed route: ${route.data?.name} data: ${route.data?.args}');
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (kDebugMode) {
      print('Popped route: ${route.data?.name}');
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: oldRoute, oldRoute: oldRoute);
    if (oldRoute != null && newRoute != null) {
      if (kDebugMode) {
        print(
            'Replaced route: ${newRoute.data?.name} with ${oldRoute.data?.name}');
      }
    }
  }
}
