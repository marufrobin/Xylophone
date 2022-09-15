import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // List words = [];
  // genratreswords() {
  //   generateWordPairs().take(100).forEach(
  //     (element) {
  //       words.add(element.toString());
  //     },
  //   );
  // }
  Widget noteContainer({required int noteNumber, required Color clr}) {
    return Container(
      color: clr,
      child: TextButton(
        onPressed: () async {
          final player = AudioPlayer();
          // await player.setSource(AssetSource('/assets/note1.wav'));
          await player.play(AssetSource('note$noteNumber.wav'));
        },
        child: Text(
          'Note $noteNumber.',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // genratreswords();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            noteContainer(clr: Colors.red, noteNumber: 1),
            noteContainer(clr: Colors.orange, noteNumber: 2),
            noteContainer(clr: Colors.yellow, noteNumber: 3),
            noteContainer(clr: Colors.green, noteNumber: 4),
            noteContainer(clr: Colors.teal, noteNumber: 5),
            noteContainer(clr: Colors.blue, noteNumber: 6),
            noteContainer(clr: Colors.purple, noteNumber: 7)
          ],
        ),
      ),
    );
  }
}
