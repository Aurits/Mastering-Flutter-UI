import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';

class SplashTwitter extends StatefulWidget {
  const SplashTwitter({Key? key}) : super(key: key);

  @override
  State<SplashTwitter> createState() => _SplashTwitterState();
}

class _SplashTwitterState extends State<SplashTwitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xff1DA1F2,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Color(
            0xff1D9AE7,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    Img.get(
                      'ic_social_twitter.png',
                    ),
                    color: Colors.white,
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
