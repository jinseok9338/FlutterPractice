import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Jezz",
                style: GoogleFonts.openSans(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text("Find Your",
                  style: GoogleFonts.openSans(
                      fontSize: 28, fontWeight: FontWeight.bold)),
              Text("Furniture Needs",
                  style: GoogleFonts.openSans(
                      fontSize: 28, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25),
          child: Container(
            height: 140,
            width: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("assets/images/image3.jpg")),
                  ),
                  Text("profile"),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
