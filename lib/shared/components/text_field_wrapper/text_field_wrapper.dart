import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class TextFieldWrapper extends StatelessWidget {
  final String placeholder;
  final Function onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final String obscuringCharacter = '*';
  final bool autofocus;
  TextFieldWrapper(
      {required this.placeholder,
      required this.onChanged,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.autofocus = false});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      keyboardType: keyboardType,
      onChanged: (value) => onChanged(value),
      autofocus: autofocus,
      textInputAction: TextInputAction.next,
      decoration: kTextFieldInputDecoration.copyWith(hintText: placeholder),
    );
  }
}
