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
                    Icons.visibility,
                  ),
                  title: Text("Preview"),
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
