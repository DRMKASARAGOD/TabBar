import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
            Padding(
              padding: const EdgeInsets.all(49.0),
              child: Container(
                width: 200,
                height: 200,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(96.0),
              child: Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(122.0),
              child: Container(
                width: 50,
                height: 50,
                decoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(134.0),
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.grey[600], shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
