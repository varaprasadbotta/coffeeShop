import 'package:coffee_shop/pages/Cart_page.dart';
import 'package:coffee_shop/pages/Shop_page.dart';
import 'package:coffee_shop/widgests/bottomNavBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//function to switch between shop page & Cart Page
  int _selectedIndex = 0;
  void changeCurrentPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// list of pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => changeCurrentPage(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
