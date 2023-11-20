import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/my_text.dart';
import 'package:flutter_ui/widget/star_rating.dart';
import 'package:flutter_ui/widget/toolbar.dart';

class FilterBottomSheet extends StatefulWidget {
  FilterBottomSheet();

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  // ignore: unused_field
  late BuildContext _scaffoldCtx;

  late PersistentBottomSheetController sheetController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_20,
      appBar: CommonAppBar.getPrimaryAppbar(context, "Filter")
          as PreferredSizeWidget?,
      body: Center(
        child: Text(
          "Press button \nbelow",
          textAlign: TextAlign.center,
          style: MyText.display1(context)!.copyWith(
            color: Colors.grey[300],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
        backgroundColor: Colors.pink[500],
        elevation: 3,
        child: Icon(
          Icons.filter_list,
          color: Colors.white,
        ),
        onPressed: () {
          showSheet(context);
        },
      ),
    );
  }

  void showSheet(context) {
    TextStyle(color: Colors.white, height: 1.4, fontSize: 16);
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Property Type",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new Container(
                          width: double.infinity,
                          height: 40,
                          decoration: myBoxDecoration(),
                          child: Stack(
                            children: [],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.grey[300]!,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(5.0) //                 <--- border radius here
        ),
  );
}
