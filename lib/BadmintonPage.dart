import 'package:flutter/material.dart';

class BadmintonPage extends StatelessWidget {
  const BadmintonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badminton'),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Hero(
          tag: 'move1',
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
                child: Image(
              image: AssetImage('assets/badminton.jpg'),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Flexible(
            child: Text(
                'Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Although it may be played with larger teams, the most common forms of the game are "singles" (with one player per side) and "doubles" (with two players per side). Badminton is often played as a casual outdoor activity in a yard or on a beach; formal games are played on a rectangular indoor court. Points are scored by striking the shuttlecock with the racquet and landing it within the opposing side\'s half of the court.'),
          ),
        ),
      ]),
    );
  }
}
