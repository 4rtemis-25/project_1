import 'package:flutter/material.dart';
import 'package:project_1/Screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview': (BuildContext context) => const ListViewScreen(),
    'listview2': (BuildContext context) => const ListViewScreen2(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}
