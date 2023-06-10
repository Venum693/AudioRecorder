import 'package:flutter/material.dart';
import 'package:flutter_practice/provider/play_audio_provider.dart';
import 'package:flutter_practice/provider/record_audio_provider.dart';
import 'package:flutter_practice/screen/record_and_playscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const EntryRoot());
}

class EntryRoot extends StatelessWidget {
  const EntryRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RecordAudioProvider()),
        ChangeNotifierProvider(create: (_) => PlayAudioProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Record and Play',
        home: RecordAndPlayScreen(),
      ),
    );
  }
}