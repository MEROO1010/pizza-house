import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizza_house/pages/Mainpage.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background color
        Container(
          color: HexColor('#F2EDDC'),
        ),

        //THE MAIN IMAGE OF THE PAGE
        Container(
          child: Image.asset('assets/images/image2.png'),
        ),

        //THE LEFT ARROW
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: Mainpage(),
                ),
              );
            },
            child: Image.asset('assets/images/left-arrow.png'),
          ),
          padding: EdgeInsets.only(left: 10, top: 28),
        ),

        //THE HEART
        Container(
          child: Image.asset('assets/images/heart.png'),
          padding: EdgeInsets.only(left: 340, top: 28),
        ),
      ],
    );
  }
}
