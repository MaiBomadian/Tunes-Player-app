import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';
import 'package:tune/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({
    super.key,
  });
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffFE4039), sound: 'sounds/note1.wav'),
    TuneModel(color: Color(0xffFD982B), sound: 'sounds/note2.wav'),
    TuneModel(color: Color(0xffFDEB57), sound: 'sounds/note3.wav'),
    TuneModel(color: Color(0xff33AF57), sound: 'sounds/note4.wav'),
    TuneModel(color: Color(0xff009587), sound: 'sounds/note5.wav'),
    TuneModel(color: Color(0xff0097ED), sound: 'sounds/note6.wav'),
    TuneModel(color: Color(0xff5D1F66), sound: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Tune'),
        centerTitle: true,
        backgroundColor: const Color(0xff243139),
        elevation: 0,
      ),
      body: Column(
          children: tunes
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList()),
    );
  }
}
