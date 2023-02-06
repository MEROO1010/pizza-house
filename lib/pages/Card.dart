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
        Scaffold(
          backgroundColor: HexColor('#F2EDDC'),
          body: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                ElevatedButton(
                  child: const Text('Load Data'),
                  onPressed: readJson,
                ),
              ],
            ),
          ),
        ),

        // Display the data loaded from sample.json
        _cards.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _cards.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_cards[index]["id"]),
                        title: Text(_cards[index]["name"]),
                        subtitle: Text(_cards[index]["description"]),
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
