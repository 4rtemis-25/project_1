import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  final options = const [
    'Opcion 1',
        'Opcion 2',
        'Opcion 3',
        'Opcion 4',
  ];

  const ListViewScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opciones'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            final game = options[index];
          },
        ),
        separatorBuilder: ( _ , __) => const Divider(),
      ),
    );
  }
}
