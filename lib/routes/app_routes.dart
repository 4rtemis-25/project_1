import 'package:flutter/material.dart';
import 'package:project_1/Screens/screens.dart';
import 'package:project_1/models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', name: 'HomeScreen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview', name: 'ListViewScreen', screen: const ListViewScreen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListViewScreen2', screen: const ListViewScreen2(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'AlertScreen', screen: const AlertScreen(), icon: Icons.notification_important),
    MenuOption(route: 'card', name: 'CardScreen', screen: const CardScreen(), icon: Icons.credit_score),
    MenuOption(route: 'avatar', name: 'AvatarScreen', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animate', name: 'AnimatedScreen', screen: const AnimatedScreen(), icon: Icons.supervised_user_circle_outlined),
  ];

  static Map<String, Widget Function (BuildContext)> getAppRoutes() {


    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen});
    }

    return appRoutes;

  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview': (BuildContext context) => const ListViewScreen(),
  //   'listview2': (BuildContext context) => const ListViewScreen2(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}
