import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
// Musical Instrument App
// We’re going to make a music app that plays Xylophone sounds
/* Learning Objectives
* 1. How to incorporate open source libraries of code into your project using
*  Flutter Packages.
2. How to play sound on both iOS and Android.
3. How to generate repeated user interface Widgets using functions.
4. How to use Dart functions that can take input arguments as well as return an output.
5. Dart arrow syntax for writing one line functions.
*/

// Arrow syntax => works only if the function is having single line of code .
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
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
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
