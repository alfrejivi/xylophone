import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int soundNote}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNote);
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNote: 7),
                buildKey(color: Colors.orange, soundNote: 6),
                buildKey(color: Colors.yellow, soundNote: 5),
                buildKey(color: Colors.lightGreen, soundNote: 4),
                buildKey(color: Colors.green, soundNote: 3),
                buildKey(color: Colors.blue, soundNote: 2),
                buildKey(color: Colors.purple, soundNote: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
