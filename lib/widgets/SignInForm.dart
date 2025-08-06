import 'package:flutter/material.dart';
import 'package:gdg/widgets/CustomTextFormField.dart';
import 'package:gdg/widgets/CustomeButton.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool checkbox = false;
  final nameControlar = TextEditingController();
  final emailControlar = TextEditingController();
  final passwordControlar = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),

          Text("name", style: TextStyle(color: Colors.grey)),
          CustomeTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "this field is requierd";
              }
            },
            hintText: "pleas enter your name",
            controlar: nameControlar,
          ),
          SizedBox(height: 20),

          Text("Email Address", style: TextStyle(color: Colors.grey)),
          CustomeTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "this field is requierd";
              } else if (!value.endsWith("@gmail.com")) {
                return "Email should end with @gmail.com";
              }
            },
            hintText: "please enter your email",
            controlar: emailControlar,
          ),

          SizedBox(height: 20),

          Text("Password", style: TextStyle(color: Colors.grey)),
          CustomeTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "this field is requierd";
              } else if (value.length < 8) {
                return "password too short";
              } else if (value.length > 16) {
                return "Password too long";
              }
            },
            hintText: "please enter your password",
            controlar: passwordControlar,
            password: false,
          ),

          SizedBox(height: 40),

          CustommeButton(
            text: "SignIn",
            onTap: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}
