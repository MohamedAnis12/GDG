import 'package:flutter/material.dart';
import 'package:gdg/widgets/CustomTextFormField.dart';
import 'package:gdg/widgets/CustomeButton.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool checkbox = false;
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
          Text("Email Address", style: TextStyle(color: Colors.grey)),
          CustomeTextFormField(
            validator: (value){
            if(value!.isEmpty)
              {
                return "this field is requierd";
              }
              else if(!value.endsWith("@gmail.com"))
              {
                  return "Email should end with @gmail.com";
              }
            },
            hintText: "e.g name@gmail.com",
            controlar: emailControlar,
          ),

          SizedBox(height: 20),

          Text("Password", style: TextStyle(color: Colors.grey)),
          CustomeTextFormField(
            validator: (value)
            {
              if(value!.isEmpty)
              {
                return "this field is requierd";
              }
              else if(value.length<8)
              {
                return"password too short";
              }
              else if(value.length>16)
              {
                return "Password too long";
              }
            },
            hintText: "e.g ***********",
            controlar: passwordControlar,
            password: true,
          ),

          SizedBox(height: 20),

          Row(
            children: [
              Checkbox(
                value: checkbox,
                onChanged: (value) {
                  setState(() {
                    checkbox = value!;
                  });
                },
              ),
              Text("Remember me", style: TextStyle(color: Colors.grey)),
            ],
          ),
          CustommeButton(
            text: "Login",
            onTap: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }
}