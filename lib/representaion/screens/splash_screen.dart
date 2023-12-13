import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/core/helpers/local_storage_helper.dart';
import 'package:travel_app/representaion/screens/intro_screen.dart';
import 'package:travel_app/representaion/screens/main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key : key);

  static String routerName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    redirectIntroScreen();
    
  }

  void redirectIntroScreen() async  {
    final ignoreIntroScreen = LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(seconds: 2));

    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed(MainApp.routerName);
    }
    else {
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed(IntroScreen.routerName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
          AssetHelper.backgroundSplash , 
          fit: BoxFit.fitWidth)),
        
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
          AssetHelper.circleSplash , 
          fit: BoxFit.fitWidth))
        
      ],
    );
  }
}