import "package:flutter/material.dart";

class CoffeeName extends StatelessWidget {
  final String coffeeType;
  final String isSelected;
  final void Function(String) onTap;

  const CoffeeName(
      {super.key,
      required this.coffeeType,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(coffeeType);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeeType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected == coffeeType ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
