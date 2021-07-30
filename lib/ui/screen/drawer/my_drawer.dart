import 'package:flutter/material.dart';
import 'package:tmoney/const/strings.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<Map<String, dynamic>> menus;

  @override
  void initState() {
    menus = [
      {
        'iconData': Icons.person_outline,
        'text': CStrings.myAccount,
      }
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset('assets/images/drawer_header_photo.png'),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                child: ListView.builder(
                  itemCount: menus.length,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Icon(menus[index]['iconData']),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Text(menus[index]['text'],textScaleFactor: 1.0,),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.1),
              child: TextButton(
                child: Text(CStrings.toLogOut),
                style: TextButton.styleFrom(
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
