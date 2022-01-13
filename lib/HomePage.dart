import 'package:drawer_app/Accordion.dart';
import 'package:flutter/material.dart';

import 'AnimationPage.dart';
import 'GridPage.dart';
import 'StackPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: TabBar(
            tabs: [
              Tab(
                text: 'stack',
                icon: Icon(Icons.stacked_bar_chart),
              ),
              Tab(
                text: 'Grid',
                icon: Icon(Icons.grid_3x3),
              ),
              Tab(
                text: 'Animation',
                icon: Icon(Icons.animation),
              ),
              Tab(
                text: 'Accordion',
                icon: Icon(Icons.nordic_walking),
              )
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              StackPage(),
              GridPage(),
              AnimationPage(),
              Accordion(),
            ],
          ),
        ),
      ],
    );
  }
}
