import 'package:flutter/material.dart';

class CustomAddContainer extends StatefulWidget {
  const CustomAddContainer({super.key});

  @override
  State<CustomAddContainer> createState() => _CustomAddContainerState();
}

class _CustomAddContainerState extends State<CustomAddContainer> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: const Color.fromARGB(54, 255, 153, 0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: Icon(Icons.add_circle, size: 40, color: Color(0xffff8800)),
            ),

            Text("$number"),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (number != 0) {
                    number--;
                  }
                });
              },
              child: Icon(
                Icons.remove_circle,
                size: 40,
                color: Color(0xffff8800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
