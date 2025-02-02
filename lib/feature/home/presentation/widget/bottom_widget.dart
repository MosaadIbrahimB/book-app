import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidget();
}

class _BottomWidget extends State<BottomWidget> {

  int index=0;
  List<Widget> list=[];

  @override
  Widget build(BuildContext context) {
    return CrystalNavigationBar(
      currentIndex: index,
      height: 10,
      unselectedItemColor: Colors.white70,
      backgroundColor: Colors.black.withOpacity(0.1),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(.2),
          // blurRadius: 10,
          // spreadRadius: 4,
          // offset: Offset(0, 0),
        ),
      ],
      onTap: (v){
        setState(() {
          index=v;
        });
      },
      items: [
        /// Home
        CrystalNavigationBarItem(
          icon: Icons.book,
          unselectedIcon: IconlyLight.home,
          selectedColor: Colors.white,
        ),

        /// Favourite
        CrystalNavigationBarItem(
          icon: IconlyBold.bookmark,
          unselectedIcon: IconlyLight.bookmark,
          selectedColor: Colors.white,
        ),

        /// Search
        CrystalNavigationBarItem(
            icon: Icons.queue_music,
            selectedColor: Colors.white),

        /// Profile
        CrystalNavigationBarItem(
          icon: IconlyBold.user_2,
          unselectedIcon: IconlyLight.user,
          selectedColor: Colors.white,
        ),
      ],
    );
  }
}