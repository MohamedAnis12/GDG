import 'package:flutter/material.dart';

class CustomDataCard extends StatelessWidget {
  const CustomDataCard({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(3, 3),
          ),
        ],
      ),

      child: ListTile(
        title: Text(text),
        leading: Icon(icon),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
      ),
    );
  }
}
