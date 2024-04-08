import 'package:coffee_shop/modal/Coffee_shop.dart';
import 'package:coffee_shop/modal/coffee.dart';
import 'package:coffee_shop/widgests/coffeeTileCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // method remove item from the cart
  void removeitemfromCart(Coffee coffee) {
    Provider.of<Coffee_shop>(context, listen: false).removeitemfromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffee_shop>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            //text my cart
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
            //expanded
            Expanded(
                child: ListView.builder(
                    itemCount: value.cartList.length,
                    itemBuilder: (context, index) {
                      Coffee eachcoffee = value.cartList[index];
                      return CoffeeCardTile(
                        coffee: eachcoffee,
                        icon: Icons.delete,
                        onPressed: () => removeitemfromCart(eachcoffee),
                      );
                    }))
          ],
        )),
      ),
    );
  }
}
