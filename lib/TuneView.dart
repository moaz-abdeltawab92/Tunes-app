import 'package:flutter/material.dart';
import 'package:tune_app/Tune_Item.dart';
import 'package:tune_app/Tune_mode.dart';

class Tuneview extends StatelessWidget {
  const Tuneview({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color.fromARGB(255, 245, 6, 6), sound: 'note1.wav'),
    TuneModel(color: Color.fromARGB(255, 203, 147, 50), sound: 'note2.wav'),
    TuneModel(color: Color.fromARGB(255, 214, 220, 58), sound: 'note3.wav'),
    TuneModel(color: Color.fromARGB(255, 39, 134, 30), sound: 'note4.wav'),
    TuneModel(color: Color.fromARGB(255, 62, 172, 168), sound: 'note5.wav'),
    TuneModel(color: Color.fromARGB(255, 29, 120, 212), sound: 'note6.wav'),
    TuneModel(color: Color.fromARGB(255, 100, 33, 85), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter Tune",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 55, 54, 54),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
