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
      //floating
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        child: FloatingActionButton(
          heroTag: "fab1",
          backgroundColor: Colors.teal[500],
          onPressed: () {
            print("Pressed");
          },
          elevation: 2,
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text(
                "Hello",
              ),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(0),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 1,
                  tabs: [
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.apps,
                          color: Colors.teal[600],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    ),
                    Container(
                      child: Tab(
                        icon: Icon(
                          Icons.settings_applications,
                          color: Colors.teal[600],
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
