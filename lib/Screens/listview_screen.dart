import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
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
        children: const [
          Text('Hola Mundo')
        ],
      ),
    );
  }
}