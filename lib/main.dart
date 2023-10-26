import 'package:flutter/material.dart';
import 'package:project_1/Screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const CardScreen(),
      initialRoute: 'home',
      routes: {
       'home': ( BuildContext context ) => const HomeScreen(),
       'listview': ( BuildContext context ) => const ListViewScreen(),
       'listview2': ( BuildContext context ) => const ListViewScreen2(),
       'alert': ( BuildContext context ) => const AlertScreen(),
       'card': ( BuildContext context ) => const CardScreen(),
      }
    );
  }
}