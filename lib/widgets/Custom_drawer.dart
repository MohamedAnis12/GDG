import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(color: Colors.purple),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.person, size: 42, color: Colors.pink),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomCard(text: "Person", icon: Icons.person),
          CustomCard(text: "Settings", icon: Icons.settings),
          CustomCard(text: "About", icon: Icons.error),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(onTap: () {}, leading: Icon(icon), title: Text(text));
  }
}
