import 'package:flutter/material.dart';
import 'package:gdg/widgets/Change_them_provideor.dart';
import 'package:provider/provider.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("Images/myImg.jpg"),
          ),
          SizedBox(height: 20),
          Text("Mohamed Anis", style: TextStyle(fontSize: 32)),
          SwitchListTile(
            title: Text("Dark Mode", style: TextStyle(fontSize: 24)),
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
    );
  }
}
