import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_comp_plant/screens/home/home_screen.dart';
import 'package:test_comp_plant/screens/profile/profile_screen.dart';
import 'package:test_comp_plant/screens/lifestyle/lifestyle_screen.dart';

import '../constants.dart';
import '../enums.dart';
import '../size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/User Icon.svg",
                      color: MenuState.profile == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                    ),
                    Text(
                      'Профиль',
                      style: TextStyle(
                        color: MenuState.profile == selectedMenu
                            ? kPrimaryColor
                            : inActiveIconColor,
                        fontSize: getProportionateScreenWidth(10),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                },
              ),

              TextButton(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/Cart Icon.svg",
                      color: MenuState.home == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                    ),
                    Text(
                      'Шопинг',
                      style: TextStyle(
                        color: MenuState.home == selectedMenu
                            ? kPrimaryColor
                            : inActiveIconColor,
                        fontSize: getProportionateScreenWidth(10),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
              TextButton(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.accessibility,
                      color: MenuState.lifestyle == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                    ),
                    // SvgPicture.asset(
                    //   "assets/icons/Cart Icon.svg",
                    //   color: MenuState.lifestyle == selectedMenu
                    //       ? kPrimaryColor
                    //       : inActiveIconColor,
                    // ),
                    Text(
                      'Мой образ',
                      style: TextStyle(
                        color: MenuState.lifestyle == selectedMenu
                            ? kPrimaryColor
                            : inActiveIconColor,
                        fontSize: getProportionateScreenWidth(10),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LifestyleScreen.routeName);
                },
              ),
              TextButton(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.checkroom,
                      color: MenuState.lifestyle == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                    ),
                    // SvgPicture.asset(
                    //   "assets/icons/Cart Icon.svg",
                    //   color: MenuState.lifestyle == selectedMenu
                    //       ? kPrimaryColor
                    //       : inActiveIconColor,
                    // ),
                    Text(
                      'Гардероб',
                      style: TextStyle(
                        color: MenuState.lifestyle == selectedMenu
                            ? kPrimaryColor
                            : inActiveIconColor,
                        fontSize: getProportionateScreenWidth(10),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LifestyleScreen.routeName);
                },
              ),
              // IconButton(
              //   icon: SvgPicture.asset(
              //     "assets/icons/Shop Icon.svg",
              //     color: MenuState.home == selectedMenu
              //         ? kPrimaryColor
              //         : inActiveIconColor,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushNamed(context, HomeScreen.routeName),
              // ),
              // IconButton(
              //   icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
              //   onPressed: () {},
              // ),
              // IconButton(
              //   icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
              //   onPressed: () {},
              // ),
              // IconButton(
              //   icon: SvgPicture.asset(
              //     "assets/icons/User Icon.svg",
              //     color: MenuState.profile == selectedMenu
              //         ? kPrimaryColor
              //         : inActiveIconColor,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushNamed(context, ProfileScreen.routeName),
              // ),
            ],
          )),
    );
  }
}
