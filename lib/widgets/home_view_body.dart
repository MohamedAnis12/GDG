import 'package:flutter/material.dart';
import 'package:gdg/widgets/Custom_Food_Card.dart';
import 'package:gdg/widgets/Custom_Text_Field.dart';
import 'package:gdg/widgets/customListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Icon(Icons.location_on, color: Color(0xffff8800), size: 32),
                Text(
                  "Alex, EGY",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xffff8800),
                  size: 32,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Order your food fast and free',
                      style: TextStyle(fontSize: 32),
                      softWrap: true,
                    ),
                  ),
                  Image.asset("Images/delivery-bike.png", height: 100),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(),
            SizedBox(height: 70, child: CustomListView()),
            SizedBox(
              height: 400,
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .78,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return CustomFoodCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


