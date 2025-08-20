import 'package:flutter/material.dart';

class CustomNotesBox extends StatelessWidget {
  const CustomNotesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffff8800)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Size",
                  style: TextStyle(color: Color(0xffff8800), fontSize: 18),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xffff8800),
                  size: 32,
                ),
              ],
            ),
            Text(
              "Medium",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}