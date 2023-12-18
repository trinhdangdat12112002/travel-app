import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key , 
    required this.icon,
    required this.color,
    required this.ontap,
    required this.title,

  }) : super(key : key);

  final Widget? icon;
  final Color color;
  final Function()? ontap;
  final String title;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: kMediumPadding,
            ),
            decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(kItemPadding)),
            child: icon,
          ),
          SizedBox(
            height: kItemPadding,
          ),
          Text(title)
        ],
      ),
    );
  }
}