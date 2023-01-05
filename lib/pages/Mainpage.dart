import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: HexColor('#F2EDDC'),
        ),

        //the title
        Container(
          child: Text(
            'The Menu',
            style: TextStyle(
                fontFamily: 'Roboto-Medium.tff',
                decoration: TextDecoration.none,
                color: HexColor('#CA4930')),
          ),
          padding: EdgeInsets.only(left: 80, top: 60),
        ),
      ],
    );
  }
}
