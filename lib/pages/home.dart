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
        ),
        height: size.height * 0.3,
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
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
                    SizedBox(
                      height: 12,
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/transfer.png',
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext context) {
                              return Container(
                                height: size.height * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 12,
                                        ),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Image.asset(
                                                'assets/google.png',
                                                width: 60,
                                                height: 60,
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Google Drive',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily:
                                                          GoogleFonts.poppins()
                                                              .fontFamily,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    'assets/cntang.png',
                                                    width: 16,
                                                    height: 16,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              '12.30 PM',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Color(0xffB6B6B6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '- \$20,500',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 12,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'CloudOne 10GB',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              '\$15,000',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 12,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Workspace',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              '\$500',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 12,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Stream Maxx',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              '\$5,000',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          height: 45,
                                          width: 315,
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 30,
                                            vertical: 12,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xff5F59E1),
                                            borderRadius: BorderRadius.circular(
                                              24,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Ok, Close',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    GoogleFonts.poppins()
                                                        .fontFamily,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Transfer',
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/bill.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Bills',
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
            SizedBox(
              height: 18,
            ),
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/card_bank.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Widraw',
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/reward.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Reward',
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              child: Image.asset(
                                'assets/nearby.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Nearby',
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
          ],
        ),
      );
    }

    Widget bottom() {
      return Center();
    }

    return Column(
      children: [
        header(),
        card(),
        textMenu(),
        menu(),
        bottom(),
      ],
    );
  }
}
