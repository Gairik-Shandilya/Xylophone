import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophonenew());

class Xylophonenew extends StatefulWidget {
  const Xylophonenew({super.key});

  @override
  State<Xylophonenew> createState() => _XylophonenewState();
}

class _XylophonenewState extends State<Xylophonenew> {
  AudioPlayer audioPlayer = AudioPlayer();
  Expanded buildkey({Color? color, int? soundnumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color, // Text Color
        ),
        onPressed: () async {
          await audioPlayer.play(AssetSource("audio/note$soundnumber.wav"));
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("XYLOPHONE")),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color: Colors.red, soundnumber: 1),
                buildkey(color: Colors.orange, soundnumber: 2),
                buildkey(color: Colors.yellow, soundnumber: 3),
                buildkey(color: Colors.green, soundnumber: 4),
                buildkey(color: Colors.teal, soundnumber: 5),
                buildkey(color: Colors.blue, soundnumber: 6),
                buildkey(color: Colors.purple, soundnumber: 7),
              ]),
        ),
      ),
    );
  }
}
