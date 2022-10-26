import 'package:flutter/material.dart';

class smesterBox extends StatelessWidget {
  smesterBox({Key? key, required this.title, required this.ontap})
      : super(key: key);
  String title;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontFamily: 'Dongle', fontSize: 24),
          )),
        ),
      ),
    );
  }
}
