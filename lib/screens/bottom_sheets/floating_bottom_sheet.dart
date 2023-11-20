import 'package:flutter/material.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class FloatingBottomSheet extends StatefulWidget {
  FloatingBottomSheet();

  @override
  State<FloatingBottomSheet> createState() => _FloatingBottomSheetState();
}

class _FloatingBottomSheetState extends State<FloatingBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottonSheet();
        },
        child: Icon(
          Icons.apps,
        ),
      ),
      appBar: CommonAppBar.getPrimaryAppbar(context, "floating")
          as PreferredSizeWidget?,
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
