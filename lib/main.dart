import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  final player = AudioCache();

//  void playSound(int soundNumber) {
//    player.play('note$soundNumber.wav');
//  }

  void playSound(int soundNumber) => player.play('note$soundNumber.wav');

  Expanded soundPlayer({Color color, int soundNumber}) => Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: color,
          child: Text(''),
        ),
      );

//  Expanded soundPlayer({Color color, int soundNumber}) {
//    return Expanded(
//      child: FlatButton(
//        onPressed: () {
//          playSound(soundNumber);
//        },
//        color: color,
//        child: Text(''),
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundPlayer(color: Colors.red, soundNumber: 1),
              soundPlayer(color: Colors.deepOrange, soundNumber: 2),
              soundPlayer(color: Colors.yellow, soundNumber: 3),
              soundPlayer(color: Colors.green, soundNumber: 4),
              soundPlayer(color: Colors.teal, soundNumber: 5),
              soundPlayer(color: Colors.blue, soundNumber: 6),
              soundPlayer(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
