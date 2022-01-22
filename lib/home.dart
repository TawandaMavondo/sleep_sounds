import 'package:flutter/material.dart';

class SleepSoundScreen extends StatefulWidget {
  const SleepSoundScreen({Key? key}) : super(key: key);

  @override
  _SleepSoundScreenState createState() => _SleepSoundScreenState();
}

class _SleepSoundScreenState extends State<SleepSoundScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Test Text",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
