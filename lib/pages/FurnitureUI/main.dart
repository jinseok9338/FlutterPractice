// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/pages/FurnitureUI/views/widgets/iconCard.dart';
import 'package:practice/pages/FurnitureUI/views/widgets/productCard.dart';
import 'package:practice/pages/FurnitureUI/views/widgets/profile.dart';
import 'package:practice/pages/FurnitureUI/views/widgets/stack.dart';

class FurnitureUI extends StatelessWidget {
  const FurnitureUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Profile(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconCard(
                    title: "RP 120.000",
                    description: "Fun Saldo",
                    icon: Icon(
                      Icons.wallet,
                      color: Colors.orange,
                      size: 30.0,
                    ),
                  ),
                  IconCard(
                    title: "10.000 Pts",
                    description: "Fun Point",
                    icon: Icon(
                      Icons.airplane_ticket,
                      color: Colors.orange,
                      size: 30.0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Text(
                "For You",
                style: GoogleFonts.openSans(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    StackCard(
                      child: Container(
                        height: 180,
                        width: 350,
                        child: Image.asset(
                          "assets/images/image7.jpg",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      num: 3,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Text(
                "Top Picks",
                style: GoogleFonts.openSans(fontSize: 20),
              ),
            ),
            Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      img: "assets/images/image4.jpg",
                      title: "FloriDaze Chair",
                      points: "4.9",
                      howManySold: "400",
                      price: "322",
                    ),
                    ProductCard(
                      img: "assets/images/image4.jpg",
                      title: "FloriDaze Chair",
                      points: "4.9",
                      howManySold: "400",
                      price: "322",
                    ),
                    ProductCard(
                      img: "assets/images/image4.jpg",
                      title: "FloriDaze Chair",
                      points: "4.9",
                      howManySold: "400",
                      price: "322",
                    ),
                    ProductCard(
                      img: "assets/images/image4.jpg",
                      title: "FloriDaze Chair",
                      points: "4.9",
                      howManySold: "400",
                      price: "322",
                    ),
                    ProductCard(
                      img: "assets/images/image4.jpg",
                      title: "FloriDaze Chair",
                      points: "4.9",
                      howManySold: "400",
                      price: "322",
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
