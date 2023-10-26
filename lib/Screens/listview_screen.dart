import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final options = const [
    'Opcion 1',
        'Opcion 2',
        'Opcion 3',
        'Opcion 4',
  ];

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opciones'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 149, 10, 0),
      ),
      body: ListView(
        children: [
          ...options
              .map((opcion) => ListTile(
                    title: Text(opcion),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
