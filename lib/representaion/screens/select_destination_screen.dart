import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';
import 'package:travel_app/representaion/widget/button_widget.dart';

class SelectDestinationScreen extends StatefulWidget {
  const SelectDestinationScreen({super.key});

  static const String routerName = '/select_destination_screen';

  @override
  State<SelectDestinationScreen> createState() => _SelectDestinationScreenState();
}

class _SelectDestinationScreenState extends State<SelectDestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      implementLeading: true,
      titleString: 'SELECT DESTINATION',
      child: Container(
        child: Column(
          children: [
            SizedBox(height: kMediumPadding*2,),
            TextField(
              enabled: true,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: 'Search your destination',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.black,
                    size: 14,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      kItemPadding,
                    ),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: kItemPadding),
              ),
              style: TextStyles.defaultStyle,
              onChanged: (value) {},
              onSubmitted: (String submitValue) {},
            ),
            SizedBox(height: kDefaultPadding,),
            
            Row(
              children: [
                SizedBox(width: 10,),
                ImageHelper.loadFromAsset(AssetHelper.location),
                SizedBox(width: 20,),
                Text('Search nearly destination'),
              ],
            ),
            SizedBox(height: 20,),
            ButtonWidget(tittle: 'Search')
          ],
        ),
      )
    );
  }
}