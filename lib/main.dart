import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int i) {
    final player = AudioCache();
    player.play(
        'note$i.mp3'); // el audioplayer package already assumes ely houma tahst atssets
  }


  Expanded buildKey(Color co,int i) {
  return Expanded(
      child: FlatButton(
        color: co,
        onPressed: () {
          playSound(i);
        },
        child: Text(''),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Color(0xFFCCB690) ,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              buildKey(Color(0xFF4A4058),1),
              buildKey(Color(0xFFD7604A),2),
              buildKey(Color(0xFFDFA35D),3),
              buildKey(Color(0xFF1F4D5D),4),
              buildKey(Color(0xFF18355D),5),
              buildKey(Color(0xFF655562),6),
              buildKey(Color(0xFF363D59),7),





            ],
          ),
        ),
      ),
    );
  }
}
