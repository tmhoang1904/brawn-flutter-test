import 'package:flutter/material.dart';

typedef RoutePredicate = bool Function(Route<dynamic> route);

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<T?> popToRootAndPush<T>(Route<T> route, BuildContext context) {
    return Navigator.of(context)
        .pushAndRemoveUntil(route, (route) => route.isFirst);
  }

  static void popToRoot<T>(BuildContext context) {
    return Navigator.of(context).popUntil((route) => route.isFirst);
  }
}
