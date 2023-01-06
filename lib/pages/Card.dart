import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Baackground color
        Container(
          color: HexColor('#F2EDDC'),
        ),

        //Cards
        Container(
          child: Image.asset('assets/images/Cards.png'),
        )
      ],
    );
  }
}
