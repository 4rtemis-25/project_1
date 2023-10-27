import 'package:flutter/material.dart';
import 'package:project_1/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_camera_back,
              color: AppTheme.primary,
            ),
            title: Text('Soy Un Título'),
            subtitle: Text(
                'Nulla commodo laboris cupidatat id dolore labore est nostrud. Non ad duis ex ullamco labore qui proident. Sunt pariatur voluptate amet duis reprehenderit laboris magna incididunt ea mollit id reprehenderit consequat nisi. Duis elit dolor cillum voluptate exercitation. Magna labore cillum cillum do quis occaecat veniam consectetur consectetur.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
