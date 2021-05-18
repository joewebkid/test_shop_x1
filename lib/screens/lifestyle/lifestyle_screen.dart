import 'package:flutter/material.dart';
import 'package:test_comp_plant/components/coustom_bottom_nav_bar.dart';
import 'package:test_comp_plant/enums.dart';

import 'components/body.dart';

class LifestyleScreen extends StatelessWidget {
  static String routeName = "/lifestyle";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lifestyle"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.lifestyle),
    );
  }
}
