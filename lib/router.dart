
import 'package:flutter/material.dart';
import 'package:travel_app/representaion/screens/forget_password_screen.dart';
import 'package:travel_app/representaion/screens/home_screen.dart';
import 'package:travel_app/representaion/screens/hotel_booking_screen.dart';
import 'package:travel_app/representaion/screens/hotel_screen.dart';
import 'package:travel_app/representaion/screens/intro_screen.dart';
import 'package:travel_app/representaion/screens/login_screen.dart';
import 'package:travel_app/representaion/screens/main_app.dart';
import 'package:travel_app/representaion/screens/select_date_screen.dart';
import 'package:travel_app/representaion/screens/select_destination_screen.dart';
import 'package:travel_app/representaion/screens/select_room_screen.dart';
import 'package:travel_app/representaion/screens/signup_screen.dart';
import 'package:travel_app/representaion/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routerName : (context) => HomeScreen(),
  SplashScreen.routerName  : (context) => const   SplashScreen(),
  IntroScreen.routerName : (context) => const IntroScreen(),
  MainApp.routerName : (context) => const MainApp(),
  HotelScreen.routerName : (context) => const HotelScreen(),
  HotelBookingScreen.routerName : (context) => const HotelBookingScreen(),
  SelectDateScreen.routerName : (context) =>  SelectDateScreen(),
  SelectRoomScreen.routerName : (context) => SelectRoomScreen(),
  SelectDestinationScreen.routerName : (context) => SelectDestinationScreen(),
  LoginScreenn.routerName : (context) => LoginScreenn(),
  SignUpScreen.routerName : (context) => SignUpScreen(),
  ForgetPasswordScreen.routerName : (context) => ForgetPasswordScreen(),
};