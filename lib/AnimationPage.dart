import 'package:drawer_app/BadmintonPage.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Hero(
            tag: 'move1',
            child: GestureDetector(
              child: CircleAvatar(
                  radius: 30,
                  backgroundImage: ExactAssetImage('assets/badminton.jpg')),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => BadmintonPage()));
              },
            ),
          ),
        ),
      ),
    );
  }
}
