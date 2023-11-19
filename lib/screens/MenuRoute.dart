import 'package:flutter/material.dart';
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
