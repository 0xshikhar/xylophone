import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
/* void main() {
runApp(
XylophoneApp()
);
)
*/
void playsound(int n) {
  final player = AudioCache();
  player.play('note$n.wav');
}

Expanded expand({Color color, int n}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(n);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expand(color: Colors.red, n: 1),
              expand(color: Colors.orange, n: 2),
              expand(color: Colors.pink, n: 3),
              expand(color: Colors.yellow, n: 4),
              expand(color: Colors.blue, n: 5),
              expand(color: Colors.green, n: 6),
              expand(color: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
