import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';

import 'package:bases_web/ui/router/router_generator.dart';
import 'package:flutter/material.dart';

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: (settings) => RouterGenerator.generateRouter(settings),
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
