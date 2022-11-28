// ignore_for_file: prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
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
                solitaireCard(60, 60, Colors.white),
                solitaireCard(60, 180, Colors.white),
                solitaireCard(60, 230, Colors.white),
                solitaireCard(60, 280, Colors.white),
                solitaireCard(60, 330, Colors.white),
                for (double left = 30; left < 375; left = left + 50)
                  solitaireCard(160, left, Colors.blue),
                for (double left = 80; left < 375; left = left + 50)
                  solitaireCard(200, left, Colors.purple),
                for (double left = 130; left < 375; left = left + 50)
                  solitaireCard(250, left, Colors.yellow),
                for (double left = 180; left < 375; left = left + 50)
                  solitaireCard(300, left, Colors.orange),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () => print('RENKLER DEĞİŞİYOR'),
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
