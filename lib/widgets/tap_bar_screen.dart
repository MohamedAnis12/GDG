import 'package:flutter/material.dart';
import 'package:gdg/widgets/home_body.dart';

class TapBarScreen extends StatelessWidget {
  const TapBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.purple,
          title: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "home"),
              Tab(icon: Icon(Icons.star), text: "tab 2"),
              Tab(icon: Icon(Icons.favorite), text: "tab3"),
            ],
          ),
        ),
        body: HomeBody(),
      ),
    );
  }
}
