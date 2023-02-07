import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class card extends StatefulWidget {
  const card(
      {super.key,
      required EdgeInsets margin,
      required Color color,
      required ListTile child});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  List _cards = [];

  //FETCH CONTENT FROM THE JSON FILE
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data/dat.json');
    final data = await json.decode(response);
    setState(() {
      _cards = data["cards"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Baackground color
        MaterialApp(
          home: Container(
            color: HexColor('#F2EDDC'),
          ),
        ),

        Container(
          child: Image.asset('assets/images/card1.png'),
        )
      ],
    );
  }
}
