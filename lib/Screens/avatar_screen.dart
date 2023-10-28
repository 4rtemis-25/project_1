import 'package:flutter/material.dart';
import 'package:project_1/theme/app_theme.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Miembro'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5 ),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: AppTheme.primary,
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
         )
      ),
    );
  }
}