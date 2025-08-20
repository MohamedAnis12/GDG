import 'package:flutter/material.dart';
import 'package:gdg/widgets/CustomAdd_Container.dart';
import 'package:gdg/widgets/Custom_Container.dart';
import 'package:gdg/widgets/Custom_button.dart';
import 'package:gdg/widgets/Custom_notes_box.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  int curPage = 0;
  PageController _controaler = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 400,
                        child: PageView.builder(
                          controller: _controaler,
                          onPageChanged: (value) {
                            setState(() {
                              curPage = value;
                            });
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Image.asset("Images/burger2.png");
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomContainer(
                              color: curPage == 0
                                  ? Color(0xffff8800)
                                  : Colors.grey,
                            ),
                            SizedBox(width: 10),
                            CustomContainer(
                              color: curPage == 1
                                  ? Color(0xffff8800)
                                  : Colors.grey,
                            ),
                            SizedBox(width: 10),
                            CustomContainer(
                              color: curPage == 2
                                  ? Color(0xffff8800)
                                  : Colors.grey,
                            ),
                            SizedBox(width: 10),
                            CustomContainer(
                              color: curPage == 3
                                  ? Color(0xffff8800)
                                  : Colors.grey,
                            ),
                            SizedBox(width: 10),
                            CustomContainer(
                              color: curPage == 4
                                  ? Color(0xffff8800)
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Chicken Burger",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 32),
                          Text("4.8", style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$22",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffff8800),
                          ),
                        ),
                        CustomAddContainer(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomNotesBox(),
                      CustomNotesBox(),
                      CustomNotesBox(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text("About", style: TextStyle(fontSize: 24)),
                  ),
                  Text(
                    "Our burgers are made from the finest, freshest ingredients for a delicious taste.Each bite is packed with flavor and cooked to perfection.We use premium meat and freshly baked buns to give you the best experience.Perfect for lunch, dinner, or anytime you crave something amazing.Taste the difference with our special sauces and fresh toppings.",
                    style: TextStyle(fontSize: 16),
                  ),
                  CustomButton(),
                ],
              ),
            ),
          ),

          Positioned(
            top: 25,
            right: 10,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
