import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/coffee_tile.dart';
import 'package:flutter_application_6/models/coffee.dart';
import 'package:flutter_application_6/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItem(coffee);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        backgroundColor: Colors.brown,
        title: Text('Successfully added to cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(25),
          child: Consumer<CoffeeShop>(
            builder: (context, value, child) => Column(
              children: [
                const Text(
                  'How would you like your coffee ?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: value.cofffeeShop.length,
                      itemBuilder: (context, index) {
                        Coffee coffee = value.cofffeeShop[index];
                        return CoffeeTile(
                          coffee: coffee,
                          icon: Icons.add,
                          onPressed: () => addToCart(coffee),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
