import 'package:flutter/material.dart';
import 'package:tugas4_tpm/bantuan.dart';
import 'package:tugas4_tpm/menuutama.dart';


class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    MenuUtama(),
    Bantuan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Main Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_rounded),
            label: 'Help',
          ),
        ],
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 117, 33, 243),
        currentIndex: selectedIndex,
      ),
    );
  }
}
