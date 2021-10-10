
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // void playSound(int soundNumber){
  //   player.play('note$soundNumber.wav');
  // }
  final player = AudioCache();

  Expanded musicTile({Color color, int sound}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          player.play('note$sound.wav');
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
            // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                musicTile(color: Colors.deepOrange, sound: 1),
                musicTile(color: Colors.red, sound: 2),
                musicTile(color: Colors.yellow, sound: 3),
                musicTile(color: Colors.green, sound: 4),
                musicTile(color: Colors.blue, sound: 5),
                musicTile(color: Colors.purple, sound: 6),
                musicTile(color: Colors.blue.shade100, sound: 7),
              ],
            ),
        ),
        )
    );
  }
}
