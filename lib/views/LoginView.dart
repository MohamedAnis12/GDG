import 'package:flutter/material.dart';
import 'package:gdg/widgets/LoginViewBody.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginViewBody(),
    );
  }
}


