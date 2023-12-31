import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representaion/screens/hotel_booking_screen.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';
import 'package:travel_app/representaion/widget/category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routerName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> listImageLeft = [
    {
      'name': 'Korea',
      'image': AssetHelper.korea,
    },
    {
      'name': 'Dubai',
      'image': AssetHelper.dubai,
    },
  ];
  final List<Map<String, String>> listImageRight = [
    {
      'name': 'Turkey',
      'image': AssetHelper.turkey,
    },
    {
      'name': 'Japan',
      'image': AssetHelper.japan,
    },
  ];

  Widget _buidlImageHomScreen(String name, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(HotelBookingScreen.routerName, arguments: name);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ImageHelper.loadFromAsset(
              image,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              radius: BorderRadius.circular(kItemPadding),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Positioned(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyles.defaultStyle.whiteTextColor.bold,
                  ),
                  SizedBox(
                    height: kItemPadding,
                  ),
                  Container(
                    padding: EdgeInsets.all(kMinPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kMinPadding),
                      color: Colors.white.withOpacity(0.4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFC107),
                        ),
                        SizedBox(
                          width: kItemPadding,
                        ),
                        Text('4.5')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarContainerWidget(
        titleString: 'home',
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kItemPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi James!', style: TextStyles.defaultStyle.fontHeader.whiteTextColor.bold),
                  SizedBox(
                    height: kMediumPadding,
                  ),
                  Text(
                    'Where are you going next?',
                    style: TextStyles.defaultStyle.fontCaption.whiteTextColor,
                  )
                ],
              ),
              Spacer(),
              Icon(
                FontAwesomeIcons.bell,
                size: kDefaultIconSize,
                color: Colors.white,
              ),
              SizedBox(
                width: kMinPadding,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kItemPadding,
                  ),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(kItemPadding),
                child: ImageHelper.loadFromAsset(
                  AssetHelper.person,
                ),
              ),
            ],
          ),
        ),
        implementLeading: false,
        child: Column(
          children: [
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
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                Expanded(
                  child: CategoryView(
                    icon: ImageHelper.loadFromAsset(
                      AssetHelper.ico_hotel,
                      width: kDefaultIconSize,
                      height: kDefaultIconSize,
                    ),
                    color: Color(0xffFE9C5E),
                    ontap: () {
                      Navigator.of(context).pushNamed(HotelBookingScreen.routerName);
                    },
                    title: 'Hotels'
                  ),
                ),
                SizedBox(width: kDefaultPadding),
                Expanded(
                  child: CategoryView(
                    icon: ImageHelper.loadFromAsset(
                      AssetHelper.ico_plane,
                      width: kDefaultIconSize,
                      height: kDefaultIconSize,
                    ),
                    color: Color(0xffF77777),
                    ontap: () {},
                    title: 'Flights'
                  ),
                ),
                SizedBox(width: kDefaultPadding),
      
                Expanded(
                  child: CategoryView(
                    icon: ImageHelper.loadFromAsset(
                      AssetHelper.ico_hotel_plane,
                      width: kDefaultIconSize,
                      height: kDefaultIconSize,
                    ),
                    color: Color(0xff3EC8BC),
                    ontap: () {
                      
                    },
                    title: 'All'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kMediumPadding,
            ),
            Row(
              children: [
                Text(
                  'Popular Destinations',
                  style: TextStyles.defaultStyle.bold,
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyles.defaultStyle.bold.primaryTextColor,
                ),
              ],
            ),
            SizedBox(
              height: kMediumPadding,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: listImageLeft
                            .map(
                              (e) => _buidlImageHomScreen(
                                e['name']!,
                                e['image']!,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Expanded(
                      child: Column(
                        children: listImageRight
                            .map(
                              (e) => _buidlImageHomScreen(
                                e['name']!,
                                e['image']!,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],  
        ),
      ),
    );
  }
}
