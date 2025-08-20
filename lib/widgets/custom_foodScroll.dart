import 'package:flutter/material.dart';

class CustomFoodScroll extends StatelessWidget {
  const CustomFoodScroll({super.key, required this.isTrue, required this.icon});
  final bool isTrue;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 140,
      decoration: BoxDecoration(
        color: isTrue == true ? Color(0xffff8800) : const Color.fromARGB(0, 255, 255, 255),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffff8800), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('Images/burger.png', height: 30),
          Text("burger"),
        ],
      ),
    );
  }
}