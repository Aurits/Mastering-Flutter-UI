import 'package:flutter/material.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/my_text.dart';
import '../model/people.dart';

class ListExpandAdapter {
  List? items = <People>[];
  List itemsTile = <ItemTile>[];

  ListExpandAdapter(this.items) {
    for (int i = 0; i < items!.length; i++) {
      itemsTile.add(ItemTile(index: i, object: items![i]));
    }
  }

  Widget getView() {
    return ListView.builder(
      itemCount: itemsTile.length,
      itemBuilder: (BuildContext context, int index) {
        return itemsTile[index];
      },
    );
  }
}

class ItemTile extends StatefulWidget {
  final int index;
  final People object;

  ItemTile({
    Key? key,
    required this.index,
    required this.object,
  }) : super(key: key);

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          leading: Container(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage(
              widget.object.image,
            )),
          ),
          key: PageStorageKey<int>(widget.index),
          title: Text(
            widget.object.name!,
            style: MyText.body1(context)!.copyWith(
              color: Colors.grey[880],
            ),
          ),
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: MyColors.grey_5,
              child: Text(MyStrings.lorem_ipsum,
                  textAlign: TextAlign.justify,
                  style: MyText.body1(context)!.copyWith(
                    color: Colors.grey[880],
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
