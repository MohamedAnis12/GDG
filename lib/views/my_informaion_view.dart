import 'package:flutter/material.dart';
import 'package:gdg/widgets/my_informaion_body.dart';

class MyInformaionView extends StatelessWidget {
  const MyInformaionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyInformaionBody(),
    );
  }
}