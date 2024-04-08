import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabActiveBorder: Border.all(color: Colors.white),
        activeColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade400,
        color: Colors.grey[700],
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: "Cart",
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ]);
  }
}
