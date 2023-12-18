import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';
import 'package:travel_app/representaion/widget/button_widget.dart';
import 'package:travel_app/representaion/widget/item_booking_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static const String routerName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      implementLeading: true,
      titleString: 'Hotel Booking',
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: kMediumPadding*2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoLocationHotel, 
              title: 'Destination', 
              description: 'Korean',
              ontap: null,
            ),

            SizedBox(
              height: kDefaultPadding/2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoCalendar, 
              title: 'Select date', 
              description: 'Cos cc',
              ontap: null,
            ),

            SizedBox(
              height: kDefaultPadding/2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoBed, 
              title: 'Guest and Room', 
              description: '2 Guest / 1 Room',
              ontap: null,
            ),

            ButtonWidget(tittle: 'Search')
          ],
        ),
      )
    );
  }
}