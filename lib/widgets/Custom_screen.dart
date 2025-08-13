import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({
    super.key,
    required this.pageNum,
    required this.icon,
    required this.title,
    required this.supTitle,
    required this.color,
  });
  final int pageNum;
  final IconData icon;
  final String title;
  final String supTitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 60, color: Colors.white),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40),

          Text(
            supTitle,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                size: 16,
                color: pageNum == 1
                    ? Colors.white
                    : const Color.fromARGB(146, 255, 255, 255),
              ),
              SizedBox(width: 5),

              Icon(
                Icons.circle,
                size: 16,
                color: pageNum == 2
                    ? Colors.white
                    : const Color.fromARGB(146, 255, 255, 255),
              ),
              SizedBox(width: 5),

              Icon(
                Icons.circle,
                size: 16,
                color: pageNum == 3
                    ? Colors.white
                    : const Color.fromARGB(146, 255, 255, 255),
              ),
              SizedBox(width: 5),

              Icon(
                Icons.circle,
                size: 16,
                color: pageNum == 4
                    ? Colors.white
                    : const Color.fromARGB(146, 255, 255, 255),
              ),
            ],
          ),
        ],
      ),
    );
  }
}