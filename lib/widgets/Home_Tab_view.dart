import 'package:flutter/material.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 80, color: Colors.grey),
              SizedBox(height: 20),

              Text(
                "Home Tab",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              Text(
                "this is the contant of home page",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        );
  }
}