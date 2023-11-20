import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_strings.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text("Floating Bottom Sheet"),
      ),
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
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.visibility,
                  ),
                  title: Text("Preview"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.send,
                  ),
                  title: Text("Send"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_add,
                  ),
                  title: Text("Share"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.link,
                  ),
                  title: Text("Get Link"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.content_copy,
                  ),
                  title: Text("Make a Copy"),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }
}
