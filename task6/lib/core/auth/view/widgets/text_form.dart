import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidgetTextForm extends StatelessWidget {
  const CustomWidgetTextForm({super.key, required this.validator, required this.controller, required this.hintText, required this.label, required this.prefixIcon, required this.obscureText, required this.keyboardType});
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String hintText;
  final String label;
  final IconData prefixIcon;
  final bool obscureText;
final TextInputType   keyboardType;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: IconButton(onPressed: (){
            controller?.clear();
          },icon: Icon(Icons.remove_circle)),
          hintText:hintText,
          label: Text(label),
          prefixIcon: Icon(prefixIcon),
        ),
      ),
    )
    ;
  }
}
