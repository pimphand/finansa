import 'package:flutter/material.dart';
import 'package:paynotification/pages/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customButtom() {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffF0F0F1),
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
        ),
        child: ClipRRect(
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/fi_home.png',
                    width: 19,
                    color: currentIndex == 0
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/fi_calendar.png',
                    width: 19,
                    color: currentIndex == 1
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/fi_briefcase.png',
                    width: 19,
                    color: currentIndex == 2
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/fi_settings.png',
                    width: 19,
                    color: currentIndex == 3
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return HomePage();
        case 2:
          return HomePage();
        case 3:
          return HomePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: Color(0xffF0F0F1),
      bottomNavigationBar: customButtom(),
      body: body(),
    );
  }
}
