import 'package:flutter/material.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'Home',
      implementLeading: true,
      implementTraling: true,
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}