import 'package:flutter/material.dart';
import 'package:sleep_sounds/constants.dart';
import 'package:sleep_sounds/home.dart';

class SleepSoundsApp extends StatelessWidget {
  const SleepSoundsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: const SleepSoundScreen(),
    );
  }
}
