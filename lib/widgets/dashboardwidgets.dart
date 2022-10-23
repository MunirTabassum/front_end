import 'package:flutter/material.dart';

class dashboardRegisterTab extends StatelessWidget {
  dashboardRegisterTab({
    required this.title,
    required this.icn,
    Key? key,
  }) : super(key: key);
  String title;
  IconData icn;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icn, size: 25),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontFamily: 'Dongle'),
        ),
      ],
    );
  }
}
