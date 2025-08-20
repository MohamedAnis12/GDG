import 'package:flutter/material.dart';
import 'package:gdg/widgets/custom_foodScroll.dart';

class CustomListView extends StatelessWidget {
  CustomListView({super.key});
  final List<CustomFoodScroll> foods = [
    CustomFoodScroll(icon: 'Images/burger.png', isTrue: true),
    CustomFoodScroll(icon: 'Images/burger.png', isTrue: false),
    CustomFoodScroll(icon: 'Images/burger.png', isTrue: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: foods[index],
        );
      },
    );
  }
}