import 'package:flutter/material.dart';

class StarTabView extends StatelessWidget {
  const StarTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, size: 80, color: Colors.grey),
          SizedBox(height: 20),

          Text(
            "Star Tab",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),

          Text(
            "this is the contant of Star page",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
