import 'package:flutter/material.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class TimelineCards extends StatefulWidget {
  const TimelineCards();

  @override
  State<TimelineCards> createState() => _TimelineCardsState();
}

class _TimelineCardsState extends State<TimelineCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimaryAppbar(context, "Timeline Cards")
          as PreferredSizeWidget?,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Img.get('image_7.jpg'),
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, reader you are welcome",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[800],
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            MyStrings.middle_lorem_ipsum,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Share",
                          style: TextStyle(
                            color: MyColors.accent,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Explore",
                          style: TextStyle(
                            color: MyColors.accent,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
            ),
            Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        Img.get('image_4.jpg'),
                        height: 160,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                          child: Container(
                        padding: EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Hello, reader you are welcome",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey[500],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_border,
                          color: Colors.grey[500],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              Img.get('image_4.jpg'),
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                                child: Container(
                              padding: EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Hello, reader",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey[500],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey[500],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              Img.get('image_4.jpg'),
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                                child: Container(
                              padding: EdgeInsets.all(15),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Hello, reader",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey[500],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border,
                                color: Colors.grey[500],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 55,
              child: Row(
                children: [
                  Container(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
