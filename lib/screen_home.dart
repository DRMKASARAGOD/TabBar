import 'package:flutter/material.dart';

import 'AboutPage.dart';
import 'HomePage.dart';
import 'ServicesPage.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  var _selectedIndex = 0;
  final _pagelist = [HomePage(), AboutPage(), ServicesPage()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text('Lesson 11'), backgroundColor: Colors.black),
        drawer: Drawer(
            child: ListView(
          children: [
            Container(
              height: 280,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Center(child: Text('Lesson 11'))),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text('Various Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Official'),
              subtitle: Text('Official Login'),
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('Public'),
              subtitle: Text('Public Login'),
            ),
          ],
        )),
        body: _pagelist[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.tab_sharp,
                ),
                label: 'Tabs'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_device_information_outlined,
                ),
                label: 'About'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Services'),
          ],
        ),
      ),
    );
  }
}
