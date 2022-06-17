import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');

      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');

      default:
        return _fadeRoute(const View404(), '/page404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              child: child,
              linearTransition: true),
    );
  }
}
