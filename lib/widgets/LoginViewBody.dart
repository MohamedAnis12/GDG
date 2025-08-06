import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdg/widgets/LoginForm.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text("Welcome back!", style: TextStyle(fontSize: 32)),
            Text(
              "Login to your existing account",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset("assets/shoping.svg", height: 100)],
            ),
            LoginForm(),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 50),
                Icon(Icons.facebook, size: 42, color: Colors.blue),
                Icon(Icons.facebook, size: 42, color: Colors.blue),
                SizedBox(width: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an acount? ",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Text("SignIn",style: TextStyle(color: Colors.blue),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}






