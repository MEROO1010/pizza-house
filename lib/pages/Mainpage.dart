import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pizza_house/pages/home.dart';
import 'package:pizza_house/pages/theDetails.dart';

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
                fontSize: 40,
                decoration: TextDecoration.none,
                color: HexColor('#CA4930')),
          ),
          padding: EdgeInsets.only(left: 100, top: 100),
        ),

        //THE BUTTONS
        ListView(
          children: [
            Stack(
              children: [
                //BUTTON 1
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: details(),
                          isIos: true,
                          duration: Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: Image.asset('assets/images/pizza1.png'),
                  ),
                  padding: EdgeInsets.only(left: 18, top: 180),
                ),

                //BUTTON 2
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/pizza2.png'),
                  ),
                  padding: EdgeInsets.only(left: 210, top: 180),
                ),

                //BUTTON 3
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/pizza3.png'),
                  ),
                  padding: EdgeInsets.only(left: 18, top: 420),
                ),

                //BUTTON 4
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/pizza4.png'),
                  ),
                  padding: EdgeInsets.only(left: 210, top: 420),
                ),

                //BUTTON 5
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/pizza5.png'),
                  ),
                  padding: EdgeInsets.only(left: 18, top: 660),
                ),

                //BUTTON 6
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/pizza6.png'),
                  ),
                  padding: EdgeInsets.only(left: 210, top: 660),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
