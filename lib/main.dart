import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:travel_app/core/helpers/local_storage_helper.dart';
import 'package:travel_app/representaion/screens/login_screen.dart';
import 'package:travel_app/representaion/screens/splash_screen.dart';
import 'package:travel_app/router.dart';
import '../core/constants/color_constants.dart';

void main() async{

  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel App',
        theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      home: const LoginScreenn(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
