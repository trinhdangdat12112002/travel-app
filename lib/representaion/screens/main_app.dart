import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/representaion/screens/booking_screen.dart';
import 'package:travel_app/representaion/screens/home_screen.dart';
import 'package:travel_app/representaion/screens/favorite_screen.dart';
import 'package:travel_app/representaion/screens/profile_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key : key);

  static const routerName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  IndexedStack(
        index: _curentIndex,
        children: const [
          HomeScreen(),
          FavoriteScreen(),
          BookingScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _curentIndex,
        onTap: (index) {
          setState(() {
            _curentIndex = index;
          });
        },
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
        margin: EdgeInsets.symmetric(horizontal: kMediumPadding, vertical:  kMediumPadding),
        items: [
          SalomonBottomBarItem(icon: Icon(FontAwesomeIcons.house, size: kDefaultIconSize,), title: Text('Home')),
          SalomonBottomBarItem(icon: Icon(FontAwesomeIcons.solidHeart, size: kDefaultIconSize,), title: Text('Likes')),
          SalomonBottomBarItem(icon: Icon(FontAwesomeIcons.briefcase, size: kDefaultIconSize,), title: Text('Booking')),
          SalomonBottomBarItem(icon: Icon(FontAwesomeIcons.solidUser, size: kDefaultIconSize,), title: Text('Profile')),
        ],

      ),
    );
  }
}