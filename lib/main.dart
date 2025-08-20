import 'package:flutter/material.dart';
import 'package:gdg/views/burger_app.dart';
import 'package:gdg/widgets/Change_them_provideor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const FoodApp(),
    ),
  );
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.currentTheme, // ✅ كده صح
      home: const Scaffold(body: BurgerApp()),
    );
  }
}
