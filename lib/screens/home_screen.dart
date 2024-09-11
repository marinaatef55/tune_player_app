import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/components/tune_item.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<TuneModel> Tunes = const [
    TuneModel(color: Colors.red, sound: "note1.wav"),
    TuneModel(color: Color.fromARGB(255, 0, 51, 255), sound: "note2.wav"),
    TuneModel(color: Color.fromRGBO(9, 255, 0, 1), sound: "note3.wav"),
    TuneModel(color: Color.fromARGB(255, 246, 175, 69), sound: "note4.wav"),
    TuneModel(color: Color.fromARGB(255, 147, 52, 231), sound: "note5.wav"),
    TuneModel(color: Color.fromARGB(255, 0, 208, 255), sound: "note6.wav"),
    TuneModel(color: Color.fromARGB(255, 211, 33, 170), sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Tune'),
        backgroundColor: Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: Tunes.map(
          (e) => TuneItem(tune: e),
        ).toList(),
      ),
    );
  }
}
