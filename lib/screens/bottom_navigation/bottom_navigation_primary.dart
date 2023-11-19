import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
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
      backgroundColor: MyColors.grey_5,
      //floating

      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text(
                "Hello",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
