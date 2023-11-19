import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class TikTokSplash extends StatefulWidget {
  const TikTokSplash({Key? key}) : super(key: key);

  @override
  State<TikTokSplash> createState() => _TikTokSplashState();
}

class _TikTokSplashState extends State<TikTokSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
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
                    Img.get('ic_social_tiktok.png'),
                    color: Colors.white,
                    width: 70,
                    height: 70,
                  ),
                  Container(
                    height: 15,
                  ),
                  Text(
                    'Tik Tok',
                    style: MyText.headline(context)!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
