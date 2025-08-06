import 'package:flutter/material.dart';
import 'package:gdg/views/LoginView.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginview(
        
      ),
    );
  }
}