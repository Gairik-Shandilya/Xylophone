
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

void main() => runApp(const Xylophonenew());

class Xylophonenew extends StatefulWidget {
  const Xylophonenew({super.key});

  @override
  State<Xylophonenew> createState() => _XylophonenewState();
}

class _XylophonenewState extends State<Xylophonenew> {
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async{
                
                AudioPlayer audioplayer = AudioPlayer();
                await audioPlayer.play(AssetSource("assets/audio/note1.wav"));
              }, 
              child: const Text('Click me', style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
      ),
    );
  }
}


//async {
              // AssetsAudioPlayer.newPlayer().open(
              //     Audio("assets/note1.wav"),
              //     showNotification: true,
              // );
              /*String audio_asset = "assets/audio/note1.wav";
                ByteData bytes = await rootBundle.load(audio_asset);
                Uint8List soundbytes = bytes.buffer
                    .asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
                AudioPlayer().playBytes(soundbytes);*/
              //},