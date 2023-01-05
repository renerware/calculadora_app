import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculadora(),
    );
  }
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                '1,337',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constroiBotao('C'),
                _constroiBotao('+/-'),
                _constroiBotao('%'),
                _constroiBotao('/', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constroiBotao('7', color: Colors.grey.shade800),
                _constroiBotao('8', color: Colors.grey.shade800),
                _constroiBotao('9', color: Colors.grey.shade800),
                _constroiBotao('X', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constroiBotao('4', color: Colors.grey.shade800),
                _constroiBotao('5', color: Colors.grey.shade800),
                _constroiBotao('6', color: Colors.grey.shade800),
                _constroiBotao('-', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constroiBotao('1', color: Colors.grey.shade800),
                _constroiBotao('2', color: Colors.grey.shade800),
                _constroiBotao('3', color: Colors.grey.shade800),
                _constroiBotao('+', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constroiBotaoMaior(),
                _constroiBotao('.', color: Colors.grey.shade800),
                _constroiBotao('=', color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _constroiBotao(String text, {Color color = Colors.grey}) {
    return SizedBox(
      width: 65,
      height: 65,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: color == Colors.grey ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _constroiBotaoMaior() {
    return SizedBox(
      width: 160,
      height: 65,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
          alignment: Alignment.centerLeft,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
        child: const Text(
          '0',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        ),
      ),
    );
  }
}
