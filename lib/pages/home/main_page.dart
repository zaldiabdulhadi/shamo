import 'package:bwa_shamo/pages/home/chat_page.dart';
import 'package:bwa_shamo/pages/home/home_page.dart';
import 'package:bwa_shamo/pages/home/profile_page.dart';
import 'package:bwa_shamo/pages/home/wishlist_page.dart';
import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/cart_icon.png', width: 20),
        backgroundColor: secondaryColor,
      );
    }

    Widget customButtomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 13,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            enableFeedback: true,
            currentIndex: currentIndex,
            backgroundColor: bgColor4,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                tooltip: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Image.asset(
                    'assets/home_icon.png',
                    color: currentIndex == 0
                        ? primaryColor
                        : const Color(0xff808191),
                    width: 21,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                tooltip: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10, right: 31),
                  child: Image.asset(
                    'assets/chat_icon.png',
                    color: currentIndex == 1
                        ? primaryColor
                        : const Color(0xff808191),
                    width: 20,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                tooltip: '',
                icon: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10, left: 31),
                  child: Image.asset(
                    'assets/wishlist_icon.png',
                    color: currentIndex == 2
                        ? primaryColor
                        : const Color(0xff808191),
                    width: 20,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                tooltip: '',
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/profile_icon.png',
                    color: currentIndex == 3
                        ? primaryColor
                        : const Color(0xff808191),
                    width: 18,
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
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashFactory: NoSplash.splashFactory,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: customButtomNav(),
      ),
      backgroundColor: bgColor1,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: cartButton(),
      body: body(),
    );
  }
}
