import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/my_text.dart';
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
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Wrap(
              children: <Widget>[],
            ),
          );
        });
  }
}
