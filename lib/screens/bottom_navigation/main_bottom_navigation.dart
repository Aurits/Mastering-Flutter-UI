import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class MainBottomNavigation extends StatefulWidget {
  MainBottomNavigation();
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav(
      'Movie',
      Icons.ondemand_video,
      Colors.blueGrey[700],
    ),
    BottomNav(
      'Music',
      Icons.music_note,
      Colors.pink[800],
    ),
    BottomNav(
      'Books',
      Icons.book,
      Colors.grey[700],
    ),
    BottomNav(
      'Newsstand',
      Icons.chrome_reader_mode,
      Colors.teal[800],
    ),
  ];

  @override
  State<MainBottomNavigation> createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation>
    with TickerProviderStateMixin<MainBottomNavigation> {
  int currentIndex = 0;
  late BuildContext ctx;

  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      body: Center(
        child: Text(
          "TEST",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.blue[700],
        currentIndex: currentIndex,
        items: widget.itemsNav.map(
          (BottomNav d) {
            return BottomNavigationBarItem(
              backgroundColor: d.color,
              icon: Icon(d.icon),
              label: d.title,
            );
          },
        ).toList(),
      ),
    );
  }
}
