import 'package:flutter/material.dart';

class CustommeButton extends StatelessWidget {
  const CustommeButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.deepPurple,
        ),
        child: Center(
          child: Text("Login", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}