import 'package:flutter/material.dart';
import 'package:project_1/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'Johan',
      'last_name' : 'Hernandez',
      'email' : 'johan@gmail.com',
      'password' : '12345',
      'role' : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Inputs'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormkey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre de Usuario', fromProperty: 'first_name', formValues: formValues,),
                SizedBox( height: 30,),
          
                CustomInputField(labelText: 'Apelido', hintText: 'Apellido de Usuario', fromProperty: 'last_name', formValues: formValues,),
                SizedBox( height: 30,),
          
                CustomInputField(labelText: 'Correo', hintText: 'Correo de Usuario',fromProperty: 'email', formValues: formValues, keyboardType: TextInputType.emailAddress,),
                SizedBox( height: 30,),
          
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña de Usuario', obscureText: true, fromProperty: 'password', formValues: formValues),
                SizedBox( height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem( value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem( value: 'SuperAdmin', child: Text('SuperAdmin'),),
                    DropdownMenuItem( value: 'Developer', child: Text('Developer'),),
                    DropdownMenuItem( value: 'Jr Developer', child: Text('Jr Developer'),)
                  ],
                  onChanged: ( value ) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
          
                ElevatedButton(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode());

                    if(!myFormkey.currentState!.validate()) {
                      print('Formulario No Válido');
                      return;
                    }

                    print(formValues);
                  },
                )
              ],
            ),
          ),
         ),
      ),
    );
  }
}

