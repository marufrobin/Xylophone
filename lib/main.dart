import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  List words = [];
  genratreswords() {
    generateWordPairs().take(100).forEach(
      (element) {
        words.add(element.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    genratreswords();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
        ),
        body: Text(words.toString()),
      ),
    );
  }
}
