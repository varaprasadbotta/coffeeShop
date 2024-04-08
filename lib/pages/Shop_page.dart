import 'package:coffee_shop/modal/Coffee_shop.dart';
import 'package:coffee_shop/modal/coffee.dart';
import 'package:coffee_shop/widgests/coffeeTileCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
//function to add items to cart

  void addItemCart(Coffee coffee) {
    Provider.of<Coffee_shop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffee_shop>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            //text
            Text(
              "How Would you like your Coffee",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeList.length,
                    itemBuilder: (context, index) {
                      Coffee eachcoffee = value.coffeeList[index];
                      return CoffeeCardTile(
                        coffee: eachcoffee,
                        icon: Icons.add,
                        onPressed: () => addItemCart(eachcoffee),
                      );
                    }))
          ],
        )),
      ),
    );
  }
}
