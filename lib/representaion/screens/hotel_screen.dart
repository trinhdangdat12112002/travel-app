import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  static const String routerName = '/hotel_screen';

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Screen Hotel"),
    );
  }
}