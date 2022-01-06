import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsong(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: Container(
        child: TextButton(
          child: null,
          onPressed: () {
            playsong(num);
          },
        ),
        color: color,
        //height: 87.97,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.yellowAccent, num: 1),
              buildKey(color: Colors.blue, num: 2),
              buildKey(color: Colors.lightGreenAccent, num: 3),
              buildKey(color: Colors.redAccent, num: 4),
              buildKey(color: Colors.cyanAccent, num: 5),
              buildKey(color: Colors.pinkAccent, num: 6),
              buildKey(color: Colors.amberAccent, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
