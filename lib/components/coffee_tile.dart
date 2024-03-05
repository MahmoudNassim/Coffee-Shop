import 'package:flutter/material.dart';
import 'package:flutter_application_6/models/coffee.dart';

// ignore: must_be_immutable
class CoffeeTile extends StatelessWidget {
  Coffee? coffee;
  IconData? icon;
  void Function()? onPressed;
  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: ListTile(
        leading: Image.asset(coffee!.imagePath.toString()),
        title: Text(coffee!.name.toString()),
        subtitle: Text(coffee!.price.toString()),
        trailing: IconButton(
          icon: Icon(
            icon,
            color: Colors.brown,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
