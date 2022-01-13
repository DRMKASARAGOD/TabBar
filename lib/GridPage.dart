import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(100, (index) {
          return Center(
            child: Card(
              child: Text('item $index'),
            ),
          );
        }),
      ),
    );
  }
}
