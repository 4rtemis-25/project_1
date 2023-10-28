import 'package:flutter/material.dart';
import 'package:project_1/theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCard2({
    super.key, required this.imageUrl, this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            ),

            Container(
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10 ),
              child: Text( name ?? 'Sin Título'),
            )
            
        ],
      ),
    );
  }
}
