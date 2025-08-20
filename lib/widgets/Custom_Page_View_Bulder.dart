import 'package:flutter/material.dart';
import 'package:gdg/views/Home_view.dart';
import 'package:gdg/widgets/Custom_page_view.dart';

class CustomPageViewBulder extends StatefulWidget {
  const CustomPageViewBulder({super.key});

  @override
  State<CustomPageViewBulder> createState() => _CustomPageViewBulderState();
}

class _CustomPageViewBulderState extends State<CustomPageViewBulder> {
  List<CustomPageView> pages = [
    CustomPageView(
      image: "Images/noodels.png",
      title: "Fresh Meals",
      subTitle: "Descover fresh,healthy meals.",
    ),
    CustomPageView(
      image: "Images/Eating healthy food-bro.png",
      title: "Quick delviery",
      subTitle: "Get you meals delviery quickly.",
    ),
    CustomPageView(
      image: "Images/Order food-bro.png",
      title: "Start today",
      subTitle: "Start your culinary jurney.",
    ),
  ];
  int count = 0;
  final PageController _pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageControler,
          itemCount: 3,
          onPageChanged: (value) {
            setState(() {
              count = value;
            });
          },
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: count == 0 ? 40 : 20,
                decoration: BoxDecoration(
                  color: count == 0 ? Color(0xffff8800) : Colors.grey,
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 20,
                width: count == 1 ? 40 : 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: count == 1 ? Color(0xffff8800) : Colors.grey,
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 20,
                width: count == 2 ? 40 : 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),

                  color: count == 2 ? Color(0xffff8800) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: GestureDetector(
            onTap: () {
              setState(() {
                count == 2
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeView();
                          },
                        ),
                      )
                    : _pageControler.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
              });
            },
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xffff8800),
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(child: Text(count == 2 ? "start" : "next")),
            ),
          ),
        ),
      ],
    );
  }
}
