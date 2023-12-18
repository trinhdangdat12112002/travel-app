import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/helpers/image_helper.dart';

class ItemBookingWidget extends StatelessWidget {
  const ItemBookingWidget({super.key, required this.icon, required this.title, required this.description, this.ontap});

  final String icon;
  final String title;
  final String description;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kTopPadding),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(bottom: kMediumPadding),
        child: Row(
          children: [
            ImageHelper.loadFromAsset(
              icon,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  
                ),
                SizedBox(
                  height: kMinPadding,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}