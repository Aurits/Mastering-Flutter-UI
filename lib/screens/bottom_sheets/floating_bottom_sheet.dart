import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class FloatingBottomSheet extends StatefulWidget {
  FloatingBottomSheet();

  @override
  State<FloatingBottomSheet> createState() => _FloatingBottomSheetState();
}

class _FloatingBottomSheetState extends State<FloatingBottomSheet> {
  // ignore: unused_field
  late BuildContext _scaffoldCtx;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_20,
      appBar: CommonAppBar.getPrimaryAppbar(context, "floating")
          as PreferredSizeWidget?,
      body: Builder(builder: (BuildContext ctx) {
        _scaffoldCtx = ctx;
        return Center();
      }),
    );
  }

  void showBottonSheet() {
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
