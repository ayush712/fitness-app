import 'package:flutter/material.dart';

class TextFieldWrapper extends StatelessWidget {
  final Function onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final String obscuringCharacter = '*';
  final bool autofocus;
  final InputDecoration? decoration;
  final validator;
  TextFieldWrapper(
      {required this.onChanged,
      this.validator,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.autofocus = false,
      this.decoration});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      keyboardType: keyboardType,
      onChanged: (value) => onChanged(value),
      autofocus: autofocus,
      textInputAction: TextInputAction.next,
      decoration: decoration,
      validator: (val) => validator?.call(val),
    );
  }
}
