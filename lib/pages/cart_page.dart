import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/coffee_tile.dart';
import 'package:flutter_application_6/models/coffee.dart';
import 'package:flutter_application_6/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItem(coffee);
  }

  @override
  Widget build(BuildContext context) {
    void payNow() {}

    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: ((context, index) {
                        Coffee coffee = value.userCart[index];
                        return CoffeeTile(
                          coffee: coffee,
                          icon: Icons.delete,
                          onPressed: () => removeFromCart(coffee),
                        );
                      }))),
              InkWell(
                onTap: () => payNow(),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                      child: Text(
                    'Pay Now',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
