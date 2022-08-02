import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  final sound = [
    'note1.wav',
    'note2.wav',
    'note4.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav'
  ];
  final colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];
  void playSound(int index) {
    final player = AudioPlayer();
    player.play(AssetSource(sound[index]));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemExtent: MediaQuery.of(context).size.height / 7,
        itemCount: 7,
        itemBuilder: (BuildContext context, i) {
          return Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colors[i]),
              ),
              onPressed: () {
                playSound(i);
              }, child: null,
            ),
          );
        },
      ),
    );
  }
}
