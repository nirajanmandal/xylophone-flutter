import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        child: Text('click'),
        style: TextButton.styleFrom(
          primary: color,
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber!);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
