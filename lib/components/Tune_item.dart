import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/main.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  TuneItem({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          tune.PlaySound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
