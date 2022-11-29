// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color color1 = Colors.white;
  Color color2 = Colors.blue;
  Color color3 = Colors.red;
  Color color4 = Colors.green;
  Color color5 = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    /*  Color _randomColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];*/
    final _random = Random();

/* ....... */
// Using Color.fromARGB
    /*  final _randomColor = Color.fromARGB(_random.nextInt(256),
        _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));
*/
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SafeArea(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Center(
            child: Text(
              'SOLITAIRE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            color: Color.fromARGB(255, 196, 18, 18),
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                solitaireCard(60, 60, color1),
                solitaireCard(60, 180, color1),
                solitaireCard(60, 230, color1),
                solitaireCard(60, 280, color1),
                solitaireCard(60, 330, color1),
                for (double left = 30; left < 375; left = left + 50)
                  solitaireCard(160, left, color2),
                for (double left = 80; left < 375; left = left + 50)
                  solitaireCard(200, left, color3),
                for (double left = 130; left < 375; left = left + 50)
                  solitaireCard(250, left, color4),
                for (double left = 180; left < 375; left = left + 50)
                  solitaireCard(300, left, color5),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  Color colorx = color1;
                  color1 = color2;
                  color2 = color3;
                  color3 = color4;
                  color4 = color5;
                  color5 = colorx;
                });
              },
              child: Icon(
                Icons.refresh,
                color: Colors.white,
                size: 50,
              ))
        ]),
      ),
    );
  }
}

Widget solitaireCard(double top, double left, Color color) {
  return Positioned(
    top: top,
    left: left,
    child: Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(7))),
      width: 45,
      height: 60,
    ),
  );
}
