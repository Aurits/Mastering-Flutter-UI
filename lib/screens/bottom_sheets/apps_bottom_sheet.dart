import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_strings.dart';

class AppsBottomSheet extends StatefulWidget {
  AppsBottomSheet();

  @override
  State<AppsBottomSheet> createState() => _AppsBottomSheetState();
}

class _AppsBottomSheetState extends State<AppsBottomSheet> {
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Apps Bottom Sheet"),
      ),
    );
  }

  void showBottonSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Wrap(
              spacing: 60,
              children: <Widget>[
                Container(
                  height: 10,
                ),
                Text(
                  "Ambrose",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  child: Text(
                    MyStrings.middle_lorem_ipsum,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: new Text(
                        "CLOSE",
                        style: TextStyle(
                          color: Colors.pink[500],
                        ),
                      ),
                    ),
                    new ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                      ),
                      onPressed: () {},
                      child: new Text(
                        "DETAILS",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }
}
