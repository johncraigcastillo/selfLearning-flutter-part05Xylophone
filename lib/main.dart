import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                color: Colors.red,
                noteNum: 1,
              ),
              buildKey(
                color: Colors.orange,
                noteNum: 2,
              ),
              buildKey(
                color: Colors.yellow,
                noteNum: 3,
              ),
              buildKey(
                color: Colors.green,
                noteNum: 4,
              ),
              buildKey(
                color: Colors.blue,
                noteNum: 5,
              ),
              buildKey(
                color: Colors.indigo,
                noteNum: 6,
              ),
              buildKey(
                color: Colors.purple,
                noteNum: 7,
              ),
            ],
          ),
        ),
      ),
      title: 'Xylophone',
    );
  }

  Expanded buildKey({@required int noteNum, @required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }
}
