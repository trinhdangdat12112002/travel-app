import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representaion/screens/select_date_screen.dart';
import 'package:travel_app/representaion/screens/select_destination_screen.dart';
import 'package:travel_app/representaion/screens/select_room_screen.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';
import 'package:travel_app/representaion/widget/button_widget.dart';
import 'package:travel_app/representaion/widget/item_booking_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({Key? key}): super(key : key);

  static const String routerName = '/hotel_booking_screen';

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String? dateSelected;
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      implementLeading: true,
      titleString: 'Hotel Booking',
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding*2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoLocationHotel, 
              title: 'Destination', 
              description: 'Korean',
              ontap: () {
                Navigator.of(context).pushNamed(SelectDestinationScreen.routerName);
              },
            ),

            SizedBox(
              height: kDefaultPadding/2,
            ),
            StatefulBuilder(builder: (context, setState) {
            return ItemBookingWidget(
              icon: AssetHelper.icoCalendar,
              title: 'Select date',
              description: dateSelected ?? 'Choose dates',
              ontap: () async {
                final result = await Navigator.of(context).pushNamed(SelectDateScreen.routerName);
                if ((result as List<DateTime?>).any((element) => element != null)) {
                  final startDate = result[0];
                  final endDate = result[1];
                  if (startDate != null && endDate != null) {
                    final formattedStartDate = DateFormat.yMd().format(startDate);
                    final formattedEndDate = DateFormat.yMd().format(endDate);
                    dateSelected = '$formattedStartDate - $formattedEndDate';
                    setState(() {});
                  }
                }
              },
            );
          }),

            SizedBox(
              height: kDefaultPadding/2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoBed, 
              title: 'Guest and Room', 
              description: '2 Guest / 1 Room',
              ontap: () {
                Navigator.of(context).pushNamed(SelectRoomScreen.routerName);
              },
            ),
            ButtonWidget(tittle: 'Search')
          ],
        ),
      )
    );
  }
}