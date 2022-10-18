// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/pages/coffeeUI/util/coffee_name.dart';
import 'package:practice/pages/coffeeUI/util/coffee_tile.dart';

class CoffeeUIMain extends StatefulWidget {
  const CoffeeUIMain({super.key});

  @override
  State<CoffeeUIMain> createState() => _CoffeeUIMainState();
}

class _CoffeeUIMainState extends State<CoffeeUIMain> {
  String selectedItem = "Cappucino";

  void selectItem(String item) {
    setState(() {
      selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "")
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(fontSize: 56),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find Your Coffee",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          //Horizontal list view of coffee type
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeName(
                  coffeeType: "Cappucino",
                  isSelected: selectedItem,
                  onTap: selectItem,
                ),
                CoffeeName(
                  coffeeType: "Latte",
                  isSelected: selectedItem,
                  onTap: selectItem,
                ),
                CoffeeName(
                  coffeeType: "Black",
                  isSelected: selectedItem,
                  onTap: selectItem,
                ),
              ],
            ),
          ),

          //coffee tiles horizontal
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                    price: "\$4.00",
                    img: "assets/images/image2.jpg",
                    coffeeName: "Cappucino",
                    description: "With Almond Milk"),
                CoffeeTile(
                    price: "\$2.70",
                    img: "assets/images/image6.jpg",
                    coffeeName: "Latte",
                    description: "With Nothing"),
                CoffeeTile(
                    price: "\$4.20",
                    img: "assets/images/image9.jpg",
                    coffeeName: "Black",
                    description: "With Sweetener"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
