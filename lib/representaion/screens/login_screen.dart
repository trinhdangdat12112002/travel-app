import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismenton_constaints.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representaion/screens/forget_password_screen.dart';
import 'package:travel_app/representaion/screens/home_screen.dart';
import 'package:travel_app/representaion/screens/signup_screen.dart';
import 'package:travel_app/representaion/widget/app_bar_widget.dart';
import 'package:travel_app/representaion/widget/button_widget.dart';

class LoginScreenn extends StatefulWidget {
  const LoginScreenn({super.key});

  static const String routerName = '/login_screen';

  @override
  State<LoginScreenn> createState() => _LoginScreennState();
}

class _LoginScreennState extends State<LoginScreenn> {
  bool? isChecked = false;
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'LOGIN',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Well come to my app',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          SizedBox(height: kMediumPadding,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kMinPadding),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  
                ),
                TextField(
                  enabled: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Your email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          kItemPadding,
                        ),
                      ),
                    ),
                    contentPadding: EdgeInsets.only(left: 0),
                  ),
                ),      
              ],
            ),
          ),

          SizedBox(height: kMediumPadding,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kMinPadding),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 9,
                      child: TextField(
                        enabled: true,
                        autocorrect: false,
                        obscureText: isPassword,
                        decoration: InputDecoration(
                          hintText: 'Your password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                kItemPadding,
                              ),
                            ),
                          ),
                          contentPadding: EdgeInsets.only(left: 0)
                        ),
                      ),
                    ),
                    
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                        child: Icon(
                          FontAwesomeIcons.eyeSlash,
                          color: Colors.black,
                          size: 20,                     
                        )
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
              ),
                )
              ),
              Expanded(
                flex: 5,
                child: Text('Remember me'),
              ),
              Expanded(
                flex: 4,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(ForgetPasswordScreen.routerName);
                  },
                  child: Text(
                    ' Forgot Password',
                  ),
                )
              ),
            ],
          ),
          ButtonWidget(tittle: 'Login',
            ontap: () {
              Navigator.of(context).pushNamed(HomeScreen.routerName);
            },
          ),
          SizedBox(height: kMediumPadding,),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,  // Specify the border color
                      width: 0.5,           // Specify the border width
                      style: BorderStyle.solid,  // Specify the border style
                    ),
                  ),   
                )
              ),
              Expanded(
                flex: 4,
                child: Center(child: Text('Or login with')),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,  // Specify the border color
                      width: 0.5,           // Specify the border width
                      style: BorderStyle.solid,  // Specify the border style
                    ),
                  ),   
                )
              )
            ],
          ),
          SizedBox(height: kMediumPadding,),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kMediumPadding),
                      color: Colors.white
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageHelper.loadFromAsset(AssetHelper.google),
                        SizedBox(width: 10,),
                        Text(
                          'Google',
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kMediumPadding),
                      color: Color(0xff3C5A9A),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageHelper.loadFromAsset(AssetHelper.facebook),
                        SizedBox(width: 10,),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: kMediumPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have an account ?'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SignUpScreen.routerName);
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(
                    color: ColorPalette.primaryColor,

                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

  }
}