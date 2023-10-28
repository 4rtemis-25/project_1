import 'package:flutter/material.dart';
import 'package:project_1/theme/app_theme.dart';

class SlidersScreen extends StatefulWidget {
   
  const SlidersScreen({Key? key}) : super(key: key);

  @override
  State<SlidersScreen> createState() => _SlidersScreenState();
}

class _SlidersScreenState extends State<SlidersScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null,
          ),

          SwitchListTile(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            title: const Text("Habilitar Slider"),
            onChanged: ( value ) => setState(() { _sliderEnabled = value ?? true; })
            ),
      
          Expanded(
            child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage('https://shreepng.com/img/OutSide/Celebrities/CristianoRonaldo/aggressive%20cristiano%20ronaldo.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
          ),
      
          const SizedBox(
            height: 100,
          )
      
         ],
      ),
      
    );
  }
}