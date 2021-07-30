import 'package:flutter/material.dart';
import 'package:tmoney/const/strings.dart';
import 'package:tmoney/ui/widget/photo/avatar.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (kToolbarHeight * 0.4));
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        image: DecorationImage(
          image: AssetImage('assets/images/toolbar_home_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Image.asset(
              'assets/images/tmoney.png',
              height: kToolbarHeight * 0.6,
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: kTabLabelPadding.right),
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Avatar(path:'assets/images/blank_profil.png'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
                left: kTabLabelPadding.left, right: kTabLabelPadding.left),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(CStrings.welcome), Text('(90 30 0888)')],
            ),
          ),
        ],
      ),
    );
  }
}
