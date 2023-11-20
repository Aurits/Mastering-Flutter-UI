import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/my_colors.dart';

class MainBottomNavigation extends StatefulWidget {
  MainBottomNavigation();

  @override
  State<MainBottomNavigation> createState() => new _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 2);
    _tabController!.addListener(() {});
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[900],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.blue[900],
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 220,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: MyColors.grey_20,
                          ),
                          Container(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 10,
                                width: 80,
                                color: MyColors.grey_20,
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                height: 10,
                                width: 145,
                                color: MyColors.grey_20,
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                height: 10,
                                width: 40,
                                color: MyColors.grey_20,
                              ),
                              Container(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: MyColors.grey_20,
                          ),
                          Container(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 10,
                                width: 80,
                                color: MyColors.grey_20,
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                height: 10,
                                width: 145,
                                color: MyColors.grey_20,
                              ),
                              Container(
                                height: 10,
                              ),
                              Container(
                                height: 10,
                                width: 40,
                                color: MyColors.grey_20,
                              ),
                              Container(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
