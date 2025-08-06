import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    required this.controlar,  this.password=false,required this.validator,
  });
  final String hintText;
final String? Function(String?)? validator;
  final TextEditingController controlar;
final bool password;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: password,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controlar,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hint: Text(hintText, style: TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }
}