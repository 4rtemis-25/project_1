import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context ) {

    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: ( context ){
        return CupertinoAlertDialog(
          title:  const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido del alert'),
              SizedBox( height: 10, ),
              FlutterLogo( size: 100, )
            ]
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context),
             child: const Text('Cancelar'))
          ],
        );
      });

  }

  void displayDialog(BuildContext context) {
    
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: ( context ) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido del alert'),
              SizedBox( height: 10, ),
              FlutterLogo( size: 100, )
            ]
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context),
             child: const Text('Cancelar'))
          ],
        );
      }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
            child: Text('Mostrar Alerta', style: TextStyle( fontSize: 16 ),),
            ),
            // onPressed: () => displayDialog( context ),
            onPressed: () => Platform.isAndroid 
            ? displayDialog(context)
            : displayDialogIOS(context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close ),
        onPressed: () {
          Navigator.pop(context);
        }),
    );
  }
}