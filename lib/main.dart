import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {

  @override
  void initState() {
    preaudio();
  }

  void preaudio(){
    final player = AudioCache();
    player.loadAll(['note1.wav', 'note2.wav', 'note3.wav',
      'note4.wav', 'note5.wav', 'note6.wav', 'note7.wav']);
  }
  void playSound (int sound_num){
    final player = AudioCache();
    player.play('note$sound_num.wav');
  }
  Expanded buildtile(Color color, int sound_num){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: (){
            playSound(sound_num);
          },
        ),
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
                Text(
                    'Xylophone',
                ),
                buildtile(Colors.red,1),
                buildtile(Colors.orange,2),
                buildtile(Colors.yellow,3),
                buildtile(Colors.greenAccent,4),
                buildtile(Colors.green,5),
                buildtile(Colors.blue,6),
                buildtile(Colors.deepPurple,7),
              ],
            ),
        ),
        ),
      );
  }
}


