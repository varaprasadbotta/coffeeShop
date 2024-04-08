import 'package:coffee_shop/modal/Coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Coffee_shop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
