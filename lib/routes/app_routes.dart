import 'package:flutter/material.dart';
import 'package:project_1/Screens/listview_builder.dart';
import 'package:project_1/Screens/screens.dart';
import 'package:project_1/Screens/sliders.dart';
import 'package:project_1/models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', name: 'HomeScreen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview', name: 'ListView', screen: const ListViewScreen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView2', screen: const ListViewScreen2(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alerta', screen: const AlertScreen(), icon: Icons.notification_important),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.credit_score),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animate', name: 'Animaciones', screen: const AnimatedScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'inputs', name: 'Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'sliders', name: 'Sliders', screen: const SlidersScreen(), icon: Icons.slideshow),
    MenuOption(route: 'infinite', name: 'Infinite Scroll', screen: const ListViewBuilderScreen(), icon: Icons.image_outlined),
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
