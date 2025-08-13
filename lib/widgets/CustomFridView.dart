import 'package:flutter/material.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  final List<Color> colors = [
    const Color(0xFFFFD6A5), // برتقالي باهت
    const Color(0xFFFFADAD), // وردي باهت
    const Color.fromARGB(255, 182, 189, 1), // أصفر باهت
    const Color(0xFFCAFFBF), // أخضر فاتح
    const Color(0xFFA0C4FF), // أزرق فاتح
    const Color(0xFFBDB2FF), // بنفسجي فاتح
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
          crossAxisCount: 2,
        ),

        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // لون ظل أفتح وشفاف
                  blurRadius: 8, // زيادة النعومة
                  spreadRadius: 1, // تقليل الانتشار
                  offset: const Offset(0, 4), // الظل لأسفل قليلاً
                ),
              ],
              color: colors[index % colors.length],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on, size: 50, color: Colors.white),
                Text(
                  "Grid ${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}