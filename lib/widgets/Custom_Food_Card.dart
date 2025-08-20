import 'package:flutter/material.dart';
import 'package:gdg/views/Order_view.dart';

class CustomFoodCard extends StatelessWidget {
  const CustomFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text("4.8"),
              ],
            ),
            Image.asset("Images/burger2.png", height: 100),
            Text(
              "Chese Burger",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("200g meet+chese"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" \$ 20", style: TextStyle(color: Color(0xffff8800))),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_rounded,
                    size: 30,
                    color: Color(0xffff8800),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) {
                          return OrderView();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
