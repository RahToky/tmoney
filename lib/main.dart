import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tmoney/const/colors.dart';
import 'package:tmoney/ui/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMoney',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CColors.yellowColor,
        shadowColor: CColors.shadowColor,
        iconTheme: IconThemeData(
          color: CColors.iconColor,
        ),
        appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            iconTheme: IconThemeData(color: Colors.black),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: CColors.statusBarColor,
              statusBarBrightness: Brightness.dark,
            )),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
