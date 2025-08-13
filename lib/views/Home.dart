import 'package:flutter/material.dart';
import 'package:gdg/widgets/CustomFridView.dart';
import 'package:gdg/widgets/Custom_drawer.dart';
import 'package:gdg/widgets/Custom_page_view.dart';
import 'package:gdg/widgets/tap_bar_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [TapBarScreen(), CustomGridView(), CustomPageView()];
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Flutter UI", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: screens[_curentIndex],
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentIndex,
        onTap: (index) {
          setState(() {
            _curentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.tab), label: "TapBar"),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: "GridView",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "PageView"),
        ],
      ),
    );
  }
}
