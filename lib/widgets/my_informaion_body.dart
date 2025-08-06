import 'package:flutter/material.dart';
import 'package:gdg/widgets/Custome_Data_card.dart';

class MyInformaionBody extends StatelessWidget {
  const MyInformaionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("assets/myImg.jpg"),
                    ),
                  ),
                  Text("Mohamed Anis", style: TextStyle(fontSize: 24)),
                  CustomDataCard(text: 'My Account', icon: Icons.person_outline,),
                  CustomDataCard(text: 'My Orders', icon: Icons.badge,),
                  CustomDataCard(text: 'Language Settings', icon: Icons.language,),
                  CustomDataCard(text: 'address', icon: Icons.location_on_outlined,),
                  CustomDataCard(text: 'My card', icon: Icons.credit_card_outlined,),
                  CustomDataCard(text: 'Settings', icon: Icons.settings,),
                  CustomDataCard(text: 'Privacy Policy', icon: Icons.policy_outlined,),
                  CustomDataCard(text: 'FAQ', icon: Icons.question_mark_sharp,),
  
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.store, color: Colors.grey),
                Icon(Icons.library_add_check_sharp, color: Colors.grey),
                Icon(Icons.search, color: Colors.grey),
                Icon(Icons.heart_broken_rounded, color: Colors.grey),
                Icon(Icons.person_outline, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

