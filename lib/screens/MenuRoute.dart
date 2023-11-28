import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/Cards/basic_cards.dart';
import 'package:flutter_ui/screens/Cards/card_wizard.dart';
import 'package:flutter_ui/screens/Cards/timeline_cards.dart';
import 'package:flutter_ui/screens/bottom_navigation/basic_bottom_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/bottom_navigation_primary.dart';
import 'package:flutter_ui/screens/bottom_navigation/dark_basic_bottom_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/main_bottom_navigation.dart';
import 'package:flutter_ui/screens/bottom_navigation/shifting_bottom_navigation.dart';
import 'package:flutter_ui/screens/bottom_sheets/apps_bottom_sheet.dart';
import 'package:flutter_ui/screens/bottom_sheets/basic_bottom_sheet.dart';
import 'package:flutter_ui/screens/bottom_sheets/filter_bottom_sheet.dart';
import 'package:flutter_ui/screens/bottom_sheets/floating_bottom_sheet.dart';
import 'package:flutter_ui/screens/lists/basic_list.dart';
import 'package:flutter_ui/screens/lists/drag_list.dart';
import 'package:flutter_ui/screens/lists/expand_list.dart';
import 'package:flutter_ui/screens/lists/section_list.dart';
import 'package:flutter_ui/screens/splash_screens/facebook.dart';
import 'package:flutter_ui/screens/splash_screens/instagram.dart';
import 'package:flutter_ui/screens/splash_screens/tiktok.dart';
import 'package:flutter_ui/screens/splash_screens/twitter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MenuRoute extends StatelessWidget {
  const MenuRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "FLUTTER UI COURSE",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.view_column),
            title: Text("Lists"),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Basic Lists"),
            onTap: () {
              Get.to(
                () => BasicLists(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Sectioned Lists"),
            onTap: () {
              Get.to(
                () => SectionLists(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Expanded Lists"),
            onTap: () {
              Get.to(
                () => ExpandLists(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Drag Lists"),
            onTap: () {
              Get.to(
                () => DragLists(),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.view_column),
            title: Text("Cards"),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Basic Cards"),
            onTap: () {
              Get.to(
                () => BasicCards(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Timeline Cards"),
            onTap: () {
              Get.to(
                () => TimelineCards(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Wizard Cards"),
            onTap: () {
              Get.to(
                () => WizardCard(),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.view_column),
            title: Text("Bottom Sheets"),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Basic Bottom Sheet"),
            onTap: () {
              Get.to(
                () => BasicBottomSheet(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Apps Bottom Sheet"),
            onTap: () {
              Get.to(
                () => AppsBottomSheet(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Floating Bottom Sheet"),
            onTap: () {
              Get.to(
                () => FloatingBottomSheet(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Filter Bottom Sheet"),
            onTap: () {
              Get.to(
                () => FilterBottomSheet(),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.view_column),
            title: Text("Bottom Navigatin"),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Basic Bottom Navigatin"),
            onTap: () {
              Get.to(
                () => BasicBottomNavigation(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Shifting Bottom Navigatin"),
            onTap: () {
              Get.to(
                () => ShiftingBottomNavigation(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Dark Bottom Navigatin"),
            onTap: () {
              Get.to(
                () => DarkBottomNavigation(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Primary Bottom Navigatin"),
            onTap: () {
              Get.to(
                () => PrimaryBottomNavigation(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Main Bottom Navigatin"),
            onTap: () {
              Get.to(
                () => MainBottomNavigation(),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.water_drop),
            title: Text("Splash Screen"),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Instagram"),
            onTap: () {
              Get.to(
                () => SplashInstagram(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("TikTok"),
            onTap: () {
              Get.to(
                () => TikTokSplash(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Twitter"),
            onTap: () {
              Get.to(
                () => SplashTwitter(),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            title: Text("Facebook"),
            onTap: () {
              Get.to(
                () => SplashFacebook(),
              );
            },
          ),
        ],
      ),
    );
  }
}
