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

        //THE DESCRPION
        Container(
          child: Image.asset('assets/images/description.png'),
          padding: EdgeInsets.only(top: 420, left: 2),
        ),

        //THE BTNS
        Container(
          child: Image.asset('assets/images/btns.png'),
          margin: EdgeInsets.only(left: 60, top: 620),
        ),

        //ADD TO CARD BUTTON
        Container(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: Card(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              child: Text('Add To Card',
                  style: TextStyle(
                      color: HexColor('#CA4930'),
                      fontSize: 30,
                      fontFamily: 'Roboto-Bold.ttf')),
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                backgroundColor: HexColor('#F9C97D'),
                minimumSize: Size(140, 50),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: HexColor('#F9C97D'))),
              )),
          margin: EdgeInsets.only(left: 60, top: 720),
        )
      ],
    );
  }
}
