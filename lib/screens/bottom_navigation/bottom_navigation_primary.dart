import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class PrimaryBottomNavigation extends StatefulWidget {
  PrimaryBottomNavigation();
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Shop', Icons.shopping_cart, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];

  @override
  State<PrimaryBottomNavigation> createState() =>
      _PrimaryBottomNavigationState();
}

class _PrimaryBottomNavigationState extends State<PrimaryBottomNavigation>
    with TickerProviderStateMixin<PrimaryBottomNavigation> {
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
              icon: Icon(d.icon),
              label: d.title,
            );
          },
        ).toList(),
      ),
    );
  }
}
