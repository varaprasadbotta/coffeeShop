import 'package:coffee_shop/modal/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeCardTile extends StatelessWidget {
  final Coffee coffee;
  IconData icon;
  void Function()? onPressed;
  CoffeeCardTile(
      {super.key, required this.coffee, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 12),
          child: ListTile(
            title: Text(
              coffee.coffeeName,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.currency_rupee_sharp,
                  size: 20,
                ),
                Text(
                  coffee.coffeePrice,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ],
            ),
            leading: Image.asset(coffee.coffeeImagePath),
            trailing: IconButton(
              icon: Icon(icon),
              onPressed: onPressed,
            ),
          ),
        ),
      ),
    );
  }
}
