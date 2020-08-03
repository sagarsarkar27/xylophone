import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play_sound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }


   Expanded buildKey({Color color, int i}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          play_sound(i);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Center(child:Text('Xylophone'),
          ),
          backgroundColor:Colors.blueGrey,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple,i:1),
              buildKey(color: Colors.blue,i:2),
              buildKey(color: Colors.lightBlueAccent,i:3),
              buildKey(color: Colors.green,i:4),
              buildKey(color: Colors.greenAccent,i:5),
              buildKey(color: Colors.yellow,i:6),
              buildKey(color: Colors.pink,i:7),
              buildKey(color:Colors.red,i:8),
            ],
          ),
        ),
      ),
    );
  }
}
