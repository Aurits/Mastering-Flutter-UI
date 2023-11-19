import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class DarkBottomNavigation extends StatefulWidget {
  DarkBottomNavigation();
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Shop', Icons.shopping_cart, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];

  @override
  State<DarkBottomNavigation> createState() => _DarkBottomNavigationState();
}

class _DarkBottomNavigationState extends State<DarkBottomNavigation>
    with TickerProviderStateMixin<DarkBottomNavigation> {
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
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "TEST",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        items: widget.itemsNav.map(
          (BottomNav d) {
            return BottomNavigationBarItem(
              backgroundColor: Colors.grey[900],
              icon: Icon(d.icon),
              label: d.title,
            );
          },
        ).toList(),
      ),
    );
  }
}
