import 'package:flutter/material.dart';
import 'package:tmoney/const/strings.dart';

class HomeContent extends StatelessWidget {
  final int rowCount = 2;

  final List<Map<String, String>> menus = [
    {
      'iconName': 'ico_transfer.png',
      'text': '${CStrings.sendMoney}',
      'route': ''
    },
    {
      'iconName': 'ico_withdrawal.png',
      'text': '${CStrings.withdrawalMoney}',
      'route': ''
    },
    {
      'iconName': 'ico_offers.png',
      'text': '${CStrings.buyCreditBundle}',
      'route': ''
    },
    {
      'iconName': 'ico_shopping.png',
      'text': '${CStrings.payShopping}',
      'route': ''
    },
    {'iconName': 'ico_bills.png', 'text': '${CStrings.payBills}', 'route': ''},
    {
      'iconName': 'ico_savings.png',
      'text': '${CStrings.saveMoney}',
      'route': ''
    },
    {
      'iconName': 'ico_advance.png',
      'text': '${CStrings.askAdvance}',
      'route': ''
    },
    {
      'iconName': 'ico_transact.png',
      'text': '${CStrings.transactionHistory}',
      'route': ''
    },
    {
      'iconName': 'ico_qr_code.png',
      'text': '${CStrings.myQrCode}',
      'route': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    final double _menuCardHeight =
        MediaQuery.of(context).size.height / (menus.length / rowCount);

    return Expanded(
      child: Container(
        child: Row(
          children: [
            Wrap(
              children: menus
                  .map(
                    (menu) => Column(
                      children: [
                        Image(
                          image: AssetImage('assets/icons/${menu['iconName']}'),
                        ),
                        Text(menu['text']),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
