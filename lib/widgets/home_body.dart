import 'package:flutter/material.dart';
import 'package:gdg/widgets/Home_Tab_view.dart';
import 'package:gdg/widgets/favorite_tab_view.dart';
import 'package:gdg/widgets/star_tab_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
    
     TabBarView(
      children: [
        Container(color: Color(0xffd896ff), child: HomeTabView()),
        Container(color: Color(0xffffcb85), child: StarTabView()),
        Container(color: Color(0xffc2ffb4), child: FavoriteTabView()),
      ],
    );
  }
}


