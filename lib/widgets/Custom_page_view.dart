import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: double.infinity),
          Spacer(flex: 1),
          Image.asset(image, height: 300),
          SizedBox(height: 50),
          Text(
            title,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          ),
          Text(subTitle, style: TextStyle(fontSize: 24)),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
