import 'package:flutter/material.dart';
import 'package:gdg/widgets/SignInViewBody.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SignInViewBody()
    );
  }
}