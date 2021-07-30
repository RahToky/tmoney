import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tmoney/const/strings.dart';

class BalanceBar extends StatefulWidget {
  final double amount;
  final String date;

  const BalanceBar({this.amount = 0, this.date = '00/00/0000 00:00:00'});

  @override
  _BalanceBarState createState() => _BalanceBarState();
}

class _BalanceBarState extends State<BalanceBar> {
  int _activeIndex = 0;
  final double _padding = kTabLabelPadding.left * 0.3;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.zero,
      shape: BeveledRectangleBorder(),
      child: Container(
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width,
        height: kToolbarHeight,
        child: IndexedStack(
          index: _activeIndex,
          alignment: Alignment.center,
          children: [
            hiddenBalance(),
            showBalance(),
          ],
        ),
      ),
    );
  }

  Widget hiddenBalance() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.lock_outline),
            onPressed: () {
              setState(() {
                _activeIndex = 1;
              });
            },
          ),
          Expanded(
            child: InkWell(
              child: Text(
                CStrings.showMyBalance,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: (){
                setState(() {
                  _activeIndex = 1;
                });
              },
            ),
          ),
        ],
      );

  Widget showBalance() => Row(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.lock_open),
            onPressed: () {
              setState(() {
                _activeIndex = 0;
              });
            },
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: _padding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${widget.amount.toInt()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          height: 0.9,
                        ),
                      ),
                      SizedBox(width: kTabLabelPadding.left * 0.6),
                      Text(
                        CStrings.currencyName,
                        style: TextStyle(
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  Text('${CStrings.lastActualization} : ${widget.date}',style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 11,
                  ),),
                ],
              ),
            ),
          ),
          Container(
            height: kToolbarHeight,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, _padding,
                kTabLabelPadding.left, _padding),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icons/ico_transact.png'),
                  Text(
                    CStrings.details,
                    textScaleFactor: 3,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      );
}
