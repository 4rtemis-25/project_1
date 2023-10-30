import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String fromProperty;
  final Map<String, String> formValues;
  

  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.suffixIcon, this.icon, this.keyboardType, this.obscureText = false, required this.fromProperty, required this.formValues
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[fromProperty] = value,
      validator: (value) {
        if (value == null ) return 'Este Campo Es Obligatorio';
        return value.length < 3 ? 'Mínimo debe de contener 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon ( suffixIcon ),
        icon: icon == null ? null : Icon( icon)
      ),
    );
  }
}