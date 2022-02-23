import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paynotification/pages/home/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: size.height * 0.02,
          horizontal: 24,
        ),
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: Colors.black,
              ),
            ),
            Image.asset(
              'assets/bell.png',
              width: 24,
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget card() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Cards(),
            Cards(),
            Cards(),
          ],
        ),
      );
    }

    Widget textMenu() {
      return Container(
        height: size.height * 0.05,
        margin: EdgeInsets.symmetric(
          vertical: size.height * 0.02,
          horizontal: 24,
        ),
        color: Colors.black,
        child: Text(
          "Main Menus",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.poppins().fontFamily,
            color: Colors.white,
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        card(),
        textMenu(),
      ],
    );
  }
}
