import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class BasicBottomNavigation extends StatefulWidget {
  final List<BottomNav> items = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];
  BasicBottomNavigation();

  @override
  State<BasicBottomNavigation> createState() => _BasicBottomNavigationState();
}

class _BasicBottomNavigationState extends State<BasicBottomNavigation> {
  int currentIndex = 0;
  late BuildContext ctx;

  void onBackPress() {
    if (Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
