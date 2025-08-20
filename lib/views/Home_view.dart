import 'package:flutter/material.dart';
import 'package:gdg/views/Settings_view.dart';
import 'package:gdg/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curr,
        onTap: (index) {
          setState(() {
            curr = index;
            if (curr == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsView();
                  },
                ),
              );
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: curr == 0 ? Color(0xffff8800) : Colors.grey,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_rounded,
              color: curr == 1 ? Color(0xffff8800) : Colors.grey,
            ),
            label: "food",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: curr == 2 ? Color(0xffff8800) : Colors.grey,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
