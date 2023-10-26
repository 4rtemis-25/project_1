import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GMJ Hogar'),
        backgroundColor: const Color.fromARGB(255, 149, 10, 0),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon( Icons.access_time_outlined ),
          title: const Text('Nombre De La Ruta'),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListViewScreen()
            //   );

            //   Navigator.push(context, route);

            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: ( _ , __) => const Divider(),
        itemCount: 100,
      ),
    );
  }
}