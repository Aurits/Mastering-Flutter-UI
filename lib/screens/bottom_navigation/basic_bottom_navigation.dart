import 'package:flutter/material.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class BasicBottomNavigation extends StatefulWidget {
  BasicBottomNavigation({Key? key}) : super(key: key);
  final List<BottomNav> itemsNav = <BottomNav>[
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Shop', Icons.shopping_cart, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];

  @override
  State<BasicBottomNavigation> createState() => _BasicBottomNavigationState();
}

class _BasicBottomNavigationState extends State<BasicBottomNavigation>
    with TickerProviderStateMixin<BasicBottomNavigation> {
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
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        // onTap: (int index) {
        //   setState(() {
        //     currentIndex = index;
        //   });
        // },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
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
