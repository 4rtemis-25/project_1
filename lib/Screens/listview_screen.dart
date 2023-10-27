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
