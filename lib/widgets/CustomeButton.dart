import 'package:flutter/material.dart';

class CustommeButton extends StatelessWidget {
  const CustommeButton({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
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
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}