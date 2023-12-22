import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';
import 'package:travel_app/representaion/widget/button_widget.dart';
import 'package:travel_app/representaion/widget/item_add_room_widget.dart';

class SelectRoomScreen extends StatefulWidget {
  const SelectRoomScreen({Key? key}) :super(key: key);

  static const  String routerName = '/select_room_screen';

  @override
  State<SelectRoomScreen> createState() => _SelectRoomScreenState();
}

class _SelectRoomScreenState extends State<SelectRoomScreen> {

  int? room;
  int? guest;

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      implementLeading: true,
      titleString: 'ADD GUEST AND ROOM',
      child: Column(
        children:  [
          SizedBox(height: kMediumPadding*2,),
          ItemAddGuestAndRoom(title: 'Guest', icon: AssetHelper.icoGuest, initData: 1),
          ItemAddGuestAndRoom(title: 'Room', icon: AssetHelper.icoRoom, initData: 1),
          ButtonWidget(
            tittle: 'Select',
            ontap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: kMediumPadding,
          ),
          ButtonWidget(
            tittle: 'Cancel',
            ontap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      )
    );
  }
}