import 'dart:convert';
import 'package:pizza_house/data/data.json';
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
    final String response = await rootBundle.loadString('pages/dat.json');
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
        Scaffold(
          backgroundColor: HexColor('#F2EDDC'),
        ),

        //Cards
        _cards.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _cards.length,
                  itemBuilder: (context, index) {
                    return Card(
                      key: ValueKey(_cards[index]["id"]),
                      margin: const EdgeInsets.only(left: 40, top: 400),
                      color: Colors.amber.shade100,
                      child: ListTile(
                        leading: Text(_cards[index]["id"]),
                        title: Text(_cards[index]["images"]),
                        subtitle: Text(_cards[index]["title"]),
                      ),
                    );
                  },
                ),
              )
            : Container()
      ],
    );
  }
}
