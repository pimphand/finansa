import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget splace_Screen() {
      return Container(
        height: size.height * 0.5,
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.1, vertical: size.height * 0.1),
        child: Center(
          child: Image.asset(
            'assets/splash.png',
            width: 310,
            height: 398,
          ),
        ),
      );
    }

    Widget bottom() {
      return Container(
        height: size.height * 0.1,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Effortless.',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              Text(
                'Integrated app.',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        height: size.height * 0.2,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 59,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xff6F6F94),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffEDEDF3),
                ),
              ),
              Spacer(),
              Container(
                width: 150,
                height: 59,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xff5F59E1),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            splace_Screen(),
            bottom(),
            button(),
          ],
        ),
      ),
    );
  }
}
