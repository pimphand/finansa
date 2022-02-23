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
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Cards(),
              Cards(),
              Cards(),
            ],
          ),
        ),
      );
    }

    Widget textMenu() {
      return Container(
        height: size.height * 0.05,
        margin: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 24,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Main Menus",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      );
    }

    Widget menu() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 18,
        ),
        height: size.height * 0.3,
        color: Colors.yellow,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/top_up.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'Top Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/top_up.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'Top Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/top_up.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'Top Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 123,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 123,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 123,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        card(),
        textMenu(),
        menu(),
      ],
    );
  }
}
