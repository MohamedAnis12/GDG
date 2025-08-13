import 'package:flutter/material.dart';

class FavoriteTabView extends StatelessWidget {
  const FavoriteTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 80, color: Colors.grey),
              SizedBox(height: 20),

              Text(
                "Favorite Tab",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              Text(
                "this is the contant of Favorite page",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        );
  }
}