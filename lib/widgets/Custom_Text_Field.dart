import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 3),
          ],
        ),
        child: Center(
          child: TextFormField(
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter your task';
            //   }
            //   return null;
            // },
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.check_circle_outline,
                color: Colors.purple,
                size: 32,
              ),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
