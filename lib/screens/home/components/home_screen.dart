import 'package:flutter/material.dart';
import 'package:project_perpustakaan/constants.dart';
import 'package:project_perpustakaan/screens/home/components/body.dart';

import 'bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
          icon: Image.asset(
            "assets/menu.png",
          ),
          onPressed: () {}),
    );
  }
}

