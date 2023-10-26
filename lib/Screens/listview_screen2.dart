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
        backgroundColor: const Color.fromARGB(255, 149, 10, 0),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Color.fromARGB(255, 149, 10, 0),),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: ( _ , __) => const Divider(),
      ),
    );
  }
}
