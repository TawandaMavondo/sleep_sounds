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
                _buildHeader(),
                const SizedBox(
                  height: 25,
                ),
                _buildCardGrid()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF21283F),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(

            label: "Discover",
            icon: Icon(
              Icons.nights_stay,
              semanticLabel: "Discover",
            ),
          ),
          BottomNavigationBarItem(
            label: "Composer",
            icon: Icon(
              Icons.music_note,
              semanticLabel: "Discover",
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
              semanticLabel: "Discover",
            ),
          )
        ],
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

  _buildCardGrid() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        childAspectRatio: 2.2 / 3,
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return _buildCard(pos: index + 1);
        }),
      ),
    );
  }

  _buildCard({required int pos}) {
    // ignore: avoid_unnecessary_containers
    var cardList = <String>[
      "Guitar Camp",
      "Chill-Hop",
      'Lullaby',
      "Chill-Hop",
      'Lullaby',
      "Chill-Hop",
      'Lullaby',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/image $pos.png",
              width: 170,
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Text(
          cardList[pos],
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "7 Songs • Instrumentals",
          style: TextStyle(
            fontSize: 13,
            color: Color(0xF0EBEBF5),
          ),
        ),
      ],
    );
  }
}
