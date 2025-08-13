import 'package:flutter/material.dart';
import 'package:gdg/widgets/Custom_screen.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  List<CustomScreen> screens = [
    CustomScreen(
      pageNum: 1,
      icon: Icons.looks_one_rounded,
      title: 'First Page',
      supTitle: 'this is the first page',
      color: Colors.red,
    ),
    CustomScreen(
      pageNum: 2,
      icon: Icons.looks_two,
      title: 'Second Page',
      supTitle: 'this is the second page',
      color: Colors.blue,
    ),
    CustomScreen(
      pageNum: 3,
      icon: Icons.looks_3,
      title: 'third Page',
      supTitle: 'this is the third page',
      color: Colors.green,
    ),
    CustomScreen(
      pageNum: 4,
      icon: Icons.looks_4,
      title: 'final Page',
      supTitle: 'this is the final page',
      color: Colors.deepPurple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return screens[index];
        },
      ),
    );
  }
}


