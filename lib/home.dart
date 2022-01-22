import 'package:flutter/material.dart';
import 'package:sleep_sounds/Model/header_button.dart';
import 'package:sleep_sounds/constants.dart';

class SleepSoundScreen extends StatefulWidget {
  const SleepSoundScreen({Key? key}) : super(key: key);

  @override
  _SleepSoundScreenState createState() => _SleepSoundScreenState();
}

class _SleepSoundScreenState extends State<SleepSoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                _buildHeader()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildHeader() {
    var buttons = [
      HeaderButton(icon: Icons.apps, text: "All"),
      HeaderButton(icon: Icons.self_improvement, text: "Ambient"),
      HeaderButton(icon: Icons.child_friendly, text: "For Kids"),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sleep",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 60,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: buttons.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.only(right: 12),
                child: buildPillButton(
                  active: i == 0 ? true : false,
                  text: buttons[i].text,
                  icon: buttons[i].icon,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
