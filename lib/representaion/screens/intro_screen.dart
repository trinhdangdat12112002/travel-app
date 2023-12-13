import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representaion/screens/main_app.dart';
import 'package:travel_app/representaion/widget/button_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key : key);

  static const routerName = 'intro_screen';   

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  final StreamController<int> _pageStreamController = StreamController.broadcast();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _pageStreamController.add(_pageController.page!.toInt());
    });
  }

  Widget _buildItemIntroScreen(String image, String tittle, String decription, AlignmentGeometry align) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: align,
          child: ImageHelper.loadFromAsset(
            image,
            height:  400,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: kMediumPadding * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kMediumPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle, 
                style: TextStyles.defaultStyle.bold,
              ),
              const SizedBox(
                height: kMediumPadding,
              ),  
              Text(decription, style: TextStyles.defaultStyle,)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [ 
              _buildItemIntroScreen(AssetHelper.intro1, 'Book 1', 'descreption 1', Alignment.centerRight),
              _buildItemIntroScreen(AssetHelper.intro2, 'Book 2', 'descreption 2', Alignment.center),
              _buildItemIntroScreen(AssetHelper.intro3, 'Book 3', 'descreption 3', Alignment.centerLeft),
            ],
          ),
          Positioned(
            left: kMediumPadding,
            right: kMediumPadding,
            bottom: kMediumPadding * 3,
            child: Row(children: [
              Expanded(
                flex: 7,
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotWidth:  kMinPadding,
                    dotHeight: kMinPadding,
                    activeDotColor: Colors.orange
                  ),
                ),
              ),
              StreamBuilder<int>(
                initialData: 0,
                stream: _pageStreamController.stream, 
                builder: (context,snapshot){
                return Expanded(flex: 3, child: ButtonWidget(tittle: snapshot.data != 2 ? 'Next' : 'Get Started',
                ontap: () {
                  if (_pageController.page != 2) {
                    _pageController.nextPage(duration: const Duration(microseconds: 200), curve: Curves.easeIn);
                  }
                  else {
                    Navigator.of(context).pushNamed(MainApp.routerName);
                  }
                  
                }, ));
              })
            ],)
          ),
        ],
      )

    );
  }
} 