import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String path;

  const Avatar({this.path});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(path),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
