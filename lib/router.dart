import 'package:flutter/material.dart';
import 'package:travel_app/representaion/screens/hotel_booking_screen.dart';
import 'package:travel_app/representaion/screens/hotel_screen.dart';
import 'package:travel_app/representaion/screens/intro_screen.dart';
import 'package:travel_app/representaion/screens/main_app.dart';
import 'package:travel_app/representaion/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routerName  : (context) => const   SplashScreen(),
  IntroScreen.routerName : (context) => const IntroScreen(),
  MainApp.routerName : (context) => const MainApp(),
  HotelScreen.routerName : (context) => const HotelScreen(),
  HotelBookingScreen.routerName : (context) => const HotelBookingScreen(),
};