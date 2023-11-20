import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/my_text.dart';
import 'package:flutter_ui/widget/star_rating.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class FloatingBottomSheet extends StatefulWidget {
  FloatingBottomSheet();

  @override
  State<FloatingBottomSheet> createState() => _FloatingBottomSheetState();
}

class _FloatingBottomSheetState extends State<FloatingBottomSheet> {
  // ignore: unused_field
  late BuildContext _scaffoldCtx;
  bool showSheet = false;
  late PersistentBottomSheetController sheetController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_20,
      appBar: CommonAppBar.getPrimaryAppbar(context, "floating")
          as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext ctx) {
        _scaffoldCtx = ctx;
        return Center(
          child: showSheet
              ? Container()
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "fab",
                      backgroundColor: Colors.pink[500],
                      elevation: 3,
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          showSheet = !showSheet;
                          if (showSheet) {
                            _showSheet();
                          } else {
                            Navigator.pop(_scaffoldCtx);
                          }
                        });
                      },
                    ),
                    Container(
                      height: 20,
                    ),
                    Text(
                      "Press button \nabove",
                      textAlign: TextAlign.center,
                      style: MyText.display1(context)!.copyWith(
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
        );
      }),
    );
  }

  void _showSheet() {
    sheetController = showBottomSheet(
        context: _scaffoldCtx,
        builder: (BuildContext bc) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "City Building",
                              style: MyText.title(context)!
                                  .copyWith(color: Colors.grey[800]),
                            ),
                            Text(
                              "5 July 2023",
                              style: MyText.title(context)!
                                  .copyWith(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          sheetController.close;
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 5,
                  ),
                  Text(
                    MyStrings.middle_lorem_ipsum,
                    style: MyText.body1(context)!
                        .copyWith(color: Colors.grey[800]),
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Spacer(),
                      StarRating(
                        starCount: 5,
                        rating: 5,
                        color: Colors.orange[300],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 25,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        backgroundColor: MyColors.accent,
                        elevation: 0,
                      ),
                      child: Text(
                        "SUBMIT RATING",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
