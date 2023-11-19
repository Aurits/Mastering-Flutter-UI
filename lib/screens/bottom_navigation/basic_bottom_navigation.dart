import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class BasicBottomNavigation extends StatefulWidget {
  const BasicBottomNavigation({Key? key}) : super(key: key);

  @override
  State<BasicBottomNavigation> createState() => _BasicBottomNavigationState();
}

class _BasicBottomNavigationState extends State<BasicBottomNavigation> {
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Shop', Icons.shopping_cart, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];
  int currentIndex = 0;
  late BuildContext ctx;

  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: itemsNav.map(
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
