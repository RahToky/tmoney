import 'package:flutter/material.dart';
import 'package:tmoney/ui/screen/drawer/my_drawer.dart';
import 'package:tmoney/ui/screen/home/content.dart';
import 'package:tmoney/ui/widget/appbar/balance_bar.dart';
import 'package:tmoney/ui/widget/appbar/home_appbar.dart';

class HomeScreen extends StatelessWidget {

  static final String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(),
        drawer: MyDrawer(),
        body: Container(
          child: Column(
            children: [
              BalanceBar(),
              HomeContent(),
            ],
          ),
        ),
      ),
    );
  }
}
